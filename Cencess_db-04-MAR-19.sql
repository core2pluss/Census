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
  `MaritalStatus` int(1) DEFAULT '1',
  `Religion` int(1) DEFAULT '1',
  `Language` int(1) DEFAULT '8',
  `Nationality` int(1) DEFAULT '1',
  `Education` int(1) DEFAULT '3',
  `JobStatus` int(1) DEFAULT '3',
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `familytree` */

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
  PRIMARY KEY (`ID`,`HeadID`,`HFCNIC`)
) ENGINE=InnoDB AUTO_INCREMENT=3579 DEFAULT CHARSET=latin1;

/*Data for the table `headoffamily` */

insert  into `headoffamily`(`ID`,`HeadOfFamily`,`HeadID`,`FirstName`,`MiddleName`,`LastName`,`HFCNIC`,`TotalFamilyMembers`,`FatherFirstName`,`FatherMiddleName`,`FatherLastName`,`FatherCNIC`,`MobileNo`,`Email`,`MainArea`,`Address1`,`Address2`,`Block`,`Prov`,`CityDivision`,`District`,`Tehsil`,`PostalCode`) values 
(1,1,'1','Iftikhar Ahmed ','',NULL,'42211-1234567-5',5,'Muhammad Ishaque',NULL,NULL,NULL,'0333-3678899',NULL,NULL,'203 Faran Square',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(2,1,'2','Nadeem Ahmed','',NULL,'3222',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'104 Faran Square ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(3,1,'3','Zuheer Abbas','',NULL,'4232',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0333-2265510',NULL,NULL,'403 Faran Square',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(4,1,'4','Hassam Ali ','',NULL,'4244',NULL,'Dr. Abdul Jabbar',NULL,NULL,NULL,'0343-1262625',NULL,NULL,'Shumail Heights Kamran Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(5,1,'5','Usman Ghani','',NULL,'4223',NULL,'Mehmood Ali',NULL,NULL,NULL,'0344-3499909',NULL,NULL,'Noman Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(6,1,'6','Engr. Ali Nawaz Kaim Khani','',NULL,'4221',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Nawaz Shareef Scheme PHA Phalwan Ghot',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(7,1,'7','Muhammad Younus','',NULL,'4223',NULL,'Inayat Khan',NULL,NULL,NULL,'0306-375088',NULL,NULL,'B-87 Naveed Bungalows ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(8,1,'8','Engr. Mir Hasan','',NULL,'4222',NULL,'Muhammad Younus',NULL,NULL,NULL,'0333-2465654',NULL,NULL,'B-87 Naveed Bungalows ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(9,1,'9','Dr. Iftikhar ','',NULL,'4223',NULL,'Asad Ali',NULL,NULL,NULL,'0332-8200876',NULL,NULL,'B-46 Naveed Bungalows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(10,1,'10','Dr. Mushtaq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2037940',NULL,NULL,'030-',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(11,1,'11','Irfan Mustaq','',NULL,'4232',NULL,'Dr. Mushtaq Ahmed',NULL,NULL,NULL,'0333-2168583',NULL,NULL,'B-83 Naveed Bungalows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(12,1,'12','Dr. Ashfaq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3159667',NULL,NULL,'B-83 Naveed Bungalows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(13,1,'13','Engr. Zahid Ali','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-3663163',NULL,NULL,'E-7 Naveed Bungalows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(14,1,'14','Muhammad Waqas Sultan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2937719',NULL,NULL,'E-7 Naveed Bungalows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(15,1,'15','Muhammad Afzal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0316-7000366',NULL,NULL,'Model Colony',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(16,1,'16','Imran Amman','',NULL,'4232',NULL,'Ammanullah Khan',NULL,NULL,NULL,'0345-8084808',NULL,NULL,'Block #15 Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(17,1,'17','Noman Akhbar','',NULL,'4232',NULL,'Imran Amman',NULL,NULL,NULL,'0334-0304601',NULL,NULL,'Block #15 Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(18,1,'18','Asif Ali Khan','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0333-2495515',NULL,NULL,'Block #15 Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(19,1,'19','Muhammad Fayyaz','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0345-3049115',NULL,NULL,'Block #15 Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(20,1,'20','Muhammad Naeem','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-3783680',NULL,NULL,'Honeed City Block 17',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(21,1,'21','Muhammad Waseem','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0311-8709644',NULL,NULL,'Iqra Complex Block 17',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(22,1,'22','Muhammad Rizwan ','',NULL,'4232',NULL,'Muhammad Tairq',NULL,NULL,NULL,'0315-3745292',NULL,NULL,'Block 15 Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(23,1,'23','Ali Sabri','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0322-4478615',NULL,NULL,'103 Faran Complex Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(24,1,'24','Muhammad Iqbal','',NULL,'4232',NULL,'Azam Ali Khan',NULL,NULL,NULL,'0300-2781782',NULL,NULL,'102 Faran Complex Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(25,1,'25','Iftikhar Ahmed ','',NULL,'4232',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0314-2576915',NULL,NULL,'PIB Colony Karachi Center ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(26,1,'26','Waqar Ahmed','',NULL,'4232',NULL,'Muhammad Islam Khan',NULL,NULL,NULL,'0316-2051560',NULL,NULL,'PIB Colony Karachi Center',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(27,1,'27','Saad Younus','',NULL,'4232',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078080',NULL,NULL,'3 Star KK mart Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(28,1,'28','Sohaib Younus','',NULL,'4232',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-3078081',NULL,NULL,'3 Star KK mart Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(29,1,'29','Zahid Haneef Khan','',NULL,'4232',NULL,'Haneef Khan',NULL,NULL,NULL,'0331-3366905',NULL,NULL,'G-62 Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(30,1,'30','Naveed Chiragh','',NULL,'4232',NULL,'Chiragh Roshan',NULL,NULL,NULL,'0300-2443021',NULL,NULL,'E-24 Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(31,1,'31','Junaid Saleem ','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0333-3083852',NULL,NULL,'B-43 Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(32,1,'32','Abdul Majid ','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0305-3307705',NULL,NULL,'A-55 Noman Avenue Johar Mor',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(33,1,'33','Naimat Ali','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-2858239',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(34,1,'34','Muhammad Asif','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-2519570',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(35,1,'35','Shoukat Ali','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0345-2757026',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(36,1,'36','Abdul Qayoom','',NULL,'4232',NULL,'Abdul Hameed Khan',NULL,NULL,NULL,'0321-9252395',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(37,1,'37','Muhammad Isalm','',NULL,'4232',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0321-9252395',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(38,1,'38','Engr. Aftab ','',NULL,'4232',NULL,'Muhammad Sabir',NULL,NULL,NULL,'0333-2665097',NULL,NULL,'Iqra Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(39,1,'39','Muhammad Saleem','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'0301-3855909',NULL,NULL,'A-4 Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(40,1,'40','Muhammad Aamir Saleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2881282',NULL,NULL,'A-4 Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(41,1,'41','Gulrez Saleem ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2881373',NULL,NULL,'A-4 Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(42,1,'42','Muhammad Naveed Khan','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0331-3118802',NULL,NULL,'Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(43,1,'43','Dr. Imran','',NULL,'4232',NULL,'Haji Mehboob Ali',NULL,NULL,NULL,'0306-2212442',NULL,NULL,'B-42 Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(44,1,'44','Engr. Muhammad Ziaulhaq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-2807375',NULL,NULL,'B-42 Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(45,1,'45','Arshad Ali Khan','',NULL,'4232',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0300-2729795',NULL,NULL,'B-306 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(46,1,'46','Zaffar Ali Khan','',NULL,'4232',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0345-2120826',NULL,NULL,'B-306 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(47,1,'47','Muhammad Naeem Khan','',NULL,'4232',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0333-3010831',NULL,NULL,'B-308 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(48,1,'48','Muhammad Hayat Khan','',NULL,'4232',NULL,'Muhammad Naeem Khan',NULL,NULL,NULL,'0331-2933678',NULL,NULL,'B-308 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(49,1,'49','Yaseen Khan','',NULL,'4232',NULL,'Hasan Khan',NULL,NULL,NULL,'0334-3148534',NULL,NULL,'B-150 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(50,1,'50','Humayoon Khan','',NULL,'4232',NULL,'Alam Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'B-308 Block 14 Ghultan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(51,1,'51','Engr. Hasan Ali','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0321-2161456',NULL,NULL,'Zeeshan Super Luxury Apartments Flat#V-401 Ghulist',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(52,1,'52','Tahir Ahmed','',NULL,'4232',NULL,'Muhammd Yaseen Khan',NULL,NULL,NULL,'0300-3321325',NULL,NULL,'203/4 Sulaila Apartments Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(53,1,'53','Muhammad Islam Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2506211',NULL,NULL,'405/4 Sulaila Apartments Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(54,1,'54','Sarfaraz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3800042',NULL,NULL,'303/4 Sulaila Apartments Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(55,1,'55','Asfand Iqbal','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0334-2807490',NULL,NULL,'C 406 Sun Beem Apartments Kamran Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(56,1,'56','Muhammad Ahtesham','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2981421',NULL,NULL,'',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(57,1,'57','Ahmed Faraz','',NULL,'4232',NULL,'Muhammd Yousuf',NULL,NULL,NULL,'0333-8724090',NULL,NULL,'A 104 Afnan Arcade Johar Chowrangi Block 15',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(58,1,'58','Ammar Husain','',NULL,'4232',NULL,'Abid Husain',NULL,NULL,NULL,'0333-299098',NULL,NULL,'Saluleela Aparments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(59,1,'59','Hamza Zulfiquar','',NULL,'4232',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0300-3010890',NULL,NULL,'Faran Classic Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(60,1,'60','Hasnain Irshad','',NULL,'4232',NULL,'Irshad Ali',NULL,NULL,NULL,'0334-2805276',NULL,NULL,'Faran Classic Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(61,1,'61','Muhammad Awais','',NULL,'4232',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0334-2815271',NULL,NULL,'E 16 Altamash Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(62,1,'62','Dr. Tahir','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'003538-38399887',NULL,NULL,'A 90 Warqs cooperative housing society Ghulistan-e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(63,1,'63','Engr. Tariq','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'0334-3701229',NULL,NULL,'A 90 Warqs cooperative housing society Ghulistan-e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(64,1,'64','Muhammad Talib','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'0332-3536422',NULL,NULL,'A 90 Warqs cooperative housing society Ghulistan-e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(65,1,'65','Dr. Talha','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'0333-3346260',NULL,NULL,'A 90 Warqs cooperative housing society Ghulistan-e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(66,1,'66','Muhammad Yaseen Khan','',NULL,'4232',NULL,'Azeem Ud Din Khan',NULL,NULL,NULL,'0334-3133056',NULL,NULL,'A 90 Warqs cooperative housing society Ghulistan-e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(67,1,'67','Muhammad Khalid','',NULL,'4232',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0332-2357606',NULL,NULL,'Muneer Brigde view  ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(68,1,'68','Iftikhar Ali ','',NULL,'4232',NULL,'Hosiar Khan',NULL,NULL,NULL,'0333-2165610',NULL,NULL,'Flat # H-57 Floor 4th block H Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(69,1,'69','Waqas Munawar','',NULL,'4232',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0340-0289877',NULL,NULL,'Flat # E-20 block E Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(70,1,'70','Shoaib Munawer','',NULL,'4232',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0343-8012354',NULL,NULL,'Flat # H-6 block H Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(71,1,'71','Muhammad Usman Khan','',NULL,'4232',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0333-3572405',NULL,NULL,'Flat # F-20 block F Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(72,1,'72','Muhammad Noman','',NULL,'4232',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-2122420',NULL,NULL,'Flat # F-21 block F Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(73,1,'73','Muhammad Zubair Khan','',NULL,'4232',NULL,'Muhammad Usman Khan',NULL,NULL,NULL,'0332-7963840',NULL,NULL,'Flat # F-20 block F Altamash Complex',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(74,1,'74','Akber Ali','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3961349',NULL,NULL,'F-816 block II Ghulstan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(75,1,'75','Kashif Ali','',NULL,'4232',NULL,'Riasat Ali Khan',NULL,NULL,NULL,'0300-3063609',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(76,1,'76','Sarwar Khan','',NULL,'4232',NULL,'Natho Khan',NULL,NULL,NULL,'0331-3800645',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(77,1,'77','Muhammad Yousuf','',NULL,'4232',NULL,'Younus Khan',NULL,NULL,NULL,'0345-3210955',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(78,1,'78','Muhammad Younus','',NULL,'4232',NULL,'Hayat Muhammad Khan',NULL,NULL,NULL,'0334-4174597',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(79,1,'79','Saleem Ahmed','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0336-8037102',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(80,1,'80','Saleem Ahmed','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0321-3300039',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(81,1,'81','Irshad Ahmed','',NULL,'4232',NULL,'Hasan Khan',NULL,NULL,NULL,'0331-3882145',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(82,1,'82','Abrar Ahmed ','',NULL,'4232',NULL,'Arshad Ali Khan',NULL,NULL,NULL,'0332-2552643',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(83,1,'83','Muhammad Rafiq','',NULL,'4232',NULL,'Sobedar Yamin Khan',NULL,NULL,NULL,'0333-3894686',NULL,NULL,'Yasmeen Tower Block 2',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(84,1,'84','Muhammad Ayoub','',NULL,'4232',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0333-3037950',NULL,NULL,'Ghulistan-e-Johar Block 2',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(85,1,'85','Khalid Saleem Khan','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0311-3209025',NULL,NULL,'Ghulistan-e-Johar Block 2',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(86,1,'86','Rashid Ahmed Khan','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0312-8862419',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(87,1,'87','Dr. Sultan','',NULL,'4232',NULL,'Sarwar Khan',NULL,NULL,NULL,'0333-2767605',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(88,1,'88','Engr. Faisal ur Rehman','',NULL,'4232',NULL,'Sarwar Khan',NULL,NULL,NULL,'0331-3800645',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(89,1,'89','Muhammad Akram Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0344-2115335',NULL,NULL,'Mutha Khan Ghot Block II Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(90,1,'90','Muhammad Anwer Nadeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2212020',NULL,NULL,'B-157 Ghulistan-e-Johar Block 12',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(91,1,'91','Nawab Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3286312',NULL,NULL,'B-213 Block 12 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(92,1,'92','Jahangir Ali','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0346-3237687',NULL,NULL,'B-213 Block 12 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(93,1,'93','Hasnain Ali','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0335-7583195',NULL,NULL,'B-213 Block 12 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(94,1,'94','Shamshad Ali Khan','',NULL,'4232',NULL,'Haji Munshi Khan',NULL,NULL,NULL,'0302-3009994',NULL,NULL,'C-59 Block 9 PIA Society ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(95,1,'95','Zahid Shamshad','',NULL,'4232',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0334-2226280',NULL,NULL,'C-59 Block 9 PIA Society ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(96,1,'96','Altaf Ahmed','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-2215400',NULL,NULL,'A-12 Block 9 PIA Society ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(97,1,'97','Liaquat Ali','',NULL,'4232',NULL,'Behroz Khan',NULL,NULL,NULL,'0332-3202541',NULL,NULL,'A-81 Block 9 PIA Society ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(98,1,'98','Engr. Rasheed Ahmed Khan','',NULL,'4232',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0333-2289836',NULL,NULL,'H# A-147 Ghulistan-e-Johar Block 13',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(99,1,'99','Muhammad Mohsin Khan','',NULL,'4232',NULL,'Rasheed Ahmed Khan',NULL,NULL,NULL,'0333-2289836',NULL,NULL,'H# A-147 Ghulistan-e-Johar Block 13',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(100,1,'100','Engr. Noman Liaquat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-4467911',NULL,NULL,'Noman Plaza near city bakery',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(101,1,'101','Abdul Rehman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-2058339',NULL,NULL,'Rofi square parfume chowk ghulistan-e-johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(102,1,'102','Engr. Aftab Ali','',NULL,'4232',NULL,'Sabir Ali (KDA)',NULL,NULL,NULL,'0333-2665097',NULL,NULL,'Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(103,1,'103','Engr. Ubaid Raza','',NULL,'4232',NULL,'Sabir Ali (KDA)',NULL,NULL,NULL,'0333-7774990',NULL,NULL,'Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(104,1,'104','Engr. Waqas Ali','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0345-3203074',NULL,NULL,'Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(105,1,'105','Engr. Muhammad Moeer','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-3203074',NULL,NULL,'Noman Green City Flta# P 20 Ghulistan-e-Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(106,1,'106','Engr. Muhammad Owais','',NULL,'4232',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0334-2815271',NULL,NULL,'Shamshi Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(107,1,'107','Engr. Rehan Zulfiquar','',NULL,'4232',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0333-1959090',NULL,NULL,'Shamshi Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(108,1,'108','Engr. Muhammad Owais','',NULL,'4232',NULL,'Mustaque Ali',NULL,NULL,NULL,'',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(109,1,'109','Engr. Muhammad Rafiq','',NULL,'4232',NULL,'Muhammad Akram',NULL,NULL,NULL,'0300-3378090',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(110,1,'110','Engr. Zeeshan Yaseen','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2017985',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(111,1,'111','Engr. Noman Yaseen','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2017985',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(112,1,'112','Engr. Abdul Satta','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2011511',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(113,1,'113','Engr. Muhammad Zeeshan','',NULL,'4232',NULL,'Muhammad Islam',NULL,NULL,NULL,'0300-2921616',NULL,NULL,'Kamran Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(114,1,'114','Engr. Muhammad Asfand','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0334-2807490',NULL,NULL,'Kamran Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(115,1,'115','Engr. Ammar Hussain ','',NULL,'4232',NULL,'Muhammad Abid',NULL,NULL,NULL,'0333-2999098',NULL,NULL,'Sumaira Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(116,1,'116','Engr. Oan Muhammad','',NULL,'4232',NULL,'Abid Ali',NULL,NULL,NULL,'0334-2807470',NULL,NULL,'Sumaira Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(117,1,'117','Engr. Sameer','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3722459',NULL,NULL,'Sumaira Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(118,1,'118','Engr. Muhammad Raheel','',NULL,'4232',NULL,'Muhammad Farooq',NULL,NULL,NULL,'0307-3448753',NULL,NULL,'Johar Square',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(119,1,'119','Engr. Muhammad Aamir','',NULL,'4232',NULL,'Muhammad Istiaque',NULL,NULL,NULL,'0333-2993644',NULL,NULL,'Johar Square',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(120,1,'120','Engr. Muhammad Anus','',NULL,'4232',NULL,'Muhammad Istiaque',NULL,NULL,NULL,'0333-2993644',NULL,NULL,'Johar Square',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(121,1,'121','Engr. Muhammad Khuram','',NULL,'4232',NULL,'Muhammad Shahzad',NULL,NULL,NULL,'0332-2679290',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(122,1,'122','Engr. Aadil Ali','',NULL,'4232',NULL,'Muhammad Shahzad',NULL,NULL,NULL,'0333-3530545',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(123,1,'123','Engr. Nawab Ahmed','',NULL,'4232',NULL,'Farhan Ali ',NULL,NULL,NULL,'0333-1380024',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(124,1,'124','Engr. Babar Ali','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2797784',NULL,NULL,'Noman Avenue',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(125,1,'125','Engr. Faraz Ahmed','',NULL,'4232',NULL,'Dr. Naeem Khan',NULL,NULL,NULL,'0333-4985409',NULL,NULL,'Abdullah Heights',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(126,1,'126','Engr. Nisar Ahmed','',NULL,'4232',NULL,'Dr. Naeem Khan',NULL,NULL,NULL,'',NULL,NULL,'Abdullah Heights',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(127,1,'127','Engr. Faraz Ahmed','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0345-3900409',NULL,NULL,'Gulshan-e-Amin',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(128,1,'128','Engr. Muhammad Umer Khan','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2814552',NULL,NULL,'Omega Heights',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(129,1,'129','Engr. Muhammad Sufyan','',NULL,'4232',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0300-3010890',NULL,NULL,'Faran Classic Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(130,1,'130','Engr. Hamza Zulfiquar Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,NULL,'Faran Classic Apartments ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(131,1,'131','Dr. Ali','',NULL,'4232',NULL,'Dr. Shamshad Ali',NULL,NULL,NULL,'0333-2943926',NULL,NULL,'Baseera Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(132,1,'132','Engr. Muhammad Islam Khan','',NULL,'4232',NULL,'Munwar Ali Khan',NULL,NULL,NULL,'0333-2506211',NULL,NULL,'Baseera Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(133,1,'133','Engr. Muhammad Danish','',NULL,'4232',NULL,'Munwar Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Baseera Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(134,1,'134','Ammar Ahmed','',NULL,'4232',NULL,'Abdul Gaffar Khan',NULL,NULL,NULL,'',NULL,NULL,'Baseera Apartments',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(135,1,'135','Engr. Muhammad Talha Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-4910652',NULL,NULL,'Naveed Banglows',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(136,1,'136','Touqeer Islam','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2959129',NULL,NULL,'Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(137,1,'137','Waleed Islam','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0333-2959129',NULL,NULL,'Johar Chowrangi',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(138,1,'138','Ubaid Ahmer ','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0333-2719007',NULL,NULL,'Flate# E/2/40 Sunny pried Gulistan e Johar',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(139,1,'139','Abdul Sattar ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2011511',NULL,NULL,'Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(140,1,'140','Muhammad Shahabaz','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2834059',NULL,NULL,'Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(141,1,'141','Muhammad Noman','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0302-2796322',NULL,NULL,'Flate# 80 Kharaz Avineo Gulistan e Johar ',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(142,1,'142','Muhammad Rafique','',NULL,'4232',NULL,'Muhammad Yamin',NULL,NULL,NULL,NULL,NULL,NULL,'Flate# B-602 Yasmeen Tower Block-11 Gulistan e Joh',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(143,1,'143','Zulfiqar Kaim Khani','',NULL,'4232',NULL,'Mohbob Khan',NULL,NULL,NULL,'0300-9211276',NULL,NULL,'Flate# C-106 Farhan Classic G. Johar Block#12',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(144,1,'144','Bu Ali Khan ','',NULL,'4232',NULL,'Haji Taaj Muhammad',NULL,NULL,NULL,'0300-2455690',NULL,NULL,'Flate No# D-404, Grey SkyLine Block#-13 Gulistan e',NULL,'Johar Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(145,1,'145','Sajjad Ali','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0345-2009660',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(146,1,'146','Aijaz Ali','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0313-2752027',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(147,1,'147','Shahbaz Ali','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0312-8060612',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(148,1,'148','Zulfiquar Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0308-2835967',NULL,NULL,'Nayab Apartments',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(149,1,'149','Engr. Irfan Ali','',NULL,'4232',NULL,'Sadiq Ali Sher',NULL,NULL,NULL,'0321-8249878',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(150,1,'150','Engr. Khuram Aijaz','',NULL,'4232',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0300-2453900',NULL,NULL,'Nazimabad Golimaar Chowrangi',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(151,1,'151','Taimoor Baber','',NULL,'4232',NULL,'Baber Ali',NULL,NULL,NULL,'0336-2039183',NULL,NULL,'Nazimabad#4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(152,1,'152','Muhammad Irfan','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-2403115',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(153,1,'153','Muhammad Imran','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0344-2129998',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(154,1,'154','Javed','',NULL,'4232',NULL,'Yameen Khan',NULL,NULL,NULL,'0333-3934498',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(155,1,'155','Sadiq Ali Shabir','',NULL,'4232',NULL,'Imdad Ali Khan',NULL,NULL,NULL,'0333-3923872',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(156,1,'156','Fayyaz Ali','',NULL,'4232',NULL,'Niaz Ali',NULL,NULL,NULL,'0332-8290590',NULL,NULL,'Nazimabad#3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(157,1,'157','Israr Ahmed','',NULL,'4232',NULL,'Umeed Ali',NULL,NULL,NULL,'0336-2628473',NULL,NULL,'Nazimabad#3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(158,1,'158','majid Ali','',NULL,'4232',NULL,'Wajid Ali',NULL,NULL,NULL,'0324-9216928',NULL,NULL,'Nazimabad#3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(159,1,'159','Muhammad Aslam','',NULL,'4232',NULL,'Azeem Ud Din Khan',NULL,NULL,NULL,'0321-2854560',NULL,NULL,'Nazimabad#3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(160,1,'160','Azad Ahmed','',NULL,'4232',NULL,'Umeed Ali',NULL,NULL,NULL,'',NULL,NULL,'Nazimabad#6',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(161,1,'161','Javed Iqbal','',NULL,'4232',NULL,'Atta Muhammad ',NULL,NULL,NULL,'0333-3424904',NULL,NULL,'Nazimabad#7',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(162,1,'162','Shakeel Ahmed','',NULL,'4232',NULL,'Niamat Ali',NULL,NULL,NULL,'0300-2120897',NULL,NULL,'Nazimabad#4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(163,1,'163','Zaheer Ahmed','',NULL,'4232',NULL,'Niamat Ali',NULL,NULL,NULL,'0345-8275175',NULL,NULL,'Nazimabad#4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(164,1,'164','Baber Khursheed','',NULL,'4232',NULL,'Khursheed Ahmed',NULL,NULL,NULL,'0300-2181668',NULL,NULL,'Nazimabad#4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(165,1,'165','Sarfaraz Ahmed','',NULL,'4232',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-2110722',NULL,NULL,'3 D 14/5 Nazimabad # 3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(166,1,'166','Muhammad Farooq','',NULL,'4232',NULL,'Haji Muhammad Yaseen Khan',NULL,NULL,NULL,'0335-2727050',NULL,NULL,'3 B 4/21 Nazimabad # 3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(167,1,'167','Muhammad Qayoom','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0322-3423323',NULL,NULL,'Bismillah Teris Nazimabad # 3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(168,1,'168','Asim Ahmed','',NULL,'4232',NULL,'Muhammad Qayoom Khan',NULL,NULL,NULL,'0300-9203925',NULL,NULL,'Bismillah Teris Nazimabad # 3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(169,1,'169','Anees Ali Khan','',NULL,'4232',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-2376360',NULL,NULL,'3 A 4/3 Sher Bano Apartments Nazimabad # 4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(170,1,'170','Nafees Ali Khan','',NULL,'4232',NULL,'Anees Ali Khan',NULL,NULL,NULL,'0300-2140506',NULL,NULL,'3 A 4/3 Sher Bano Apartments Nazimabad # 4',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(171,1,'171','Rehan Anees','',NULL,'4232',NULL,'Anees Ali Khan',NULL,NULL,NULL,'0044-7411296696',NULL,NULL,'3 A 4/3 Sher Bano Apartments Nazimabad # 4 UK',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(172,1,'172','Muhammad Waseem','',NULL,'4232',NULL,'Abdul Qayom Khan',NULL,NULL,NULL,'0300-9203925',NULL,NULL,'Bismillah Teris Nazimabad # 3',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(173,1,'173','Liaqat Ali Khan','',NULL,'4232',NULL,'Nazar Ali Khan',NULL,NULL,NULL,'0213-6608199',NULL,NULL,'Nazimabad #1    7-H-1 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(174,1,'174','Muhammad Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-8266587',NULL,NULL,'Nazimabad #1    7-H-1 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(175,1,'175','Orangzaib','',NULL,'4232',NULL,'Liaqat Ali Khan',NULL,NULL,NULL,'0300-441743',NULL,NULL,'Nazimabad #1 2nd Floor 58/  J-1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(176,1,'176','Muhammad Ashfaq','',NULL,'4232',NULL,'Fatah Ali khan',NULL,NULL,NULL,'',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(177,1,'177','Muhammad Waseem','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(178,1,'178','muhammad Rizwan','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,NULL,'Nazimabad#1',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(179,1,'179','Muhammad kamran','',NULL,'4232',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0333-3077216',NULL,NULL,'Nazimabad#3 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(180,1,'180','Muhammad Farhan','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2146567',NULL,NULL,'Nazimabad#3 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(181,1,'181','Muhammad Faizan','',NULL,'4232',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0314-2233331',NULL,NULL,'Nazimabad#3 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(182,1,'182','Jawaid ','',NULL,'4232',NULL,'Omeed Khan',NULL,NULL,NULL,'0333-3299423',NULL,NULL,'Nazimabad#3 ',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(183,1,'183','Muhammad Saeed Khan','',NULL,'4232',NULL,'Muhammad Abdul Rasheed',NULL,NULL,NULL,'0323-8285985',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(184,1,'184','Muhammad Faisal','',NULL,'4232',NULL,'Muhammad Abdul Rasheed',NULL,NULL,NULL,'0345-2191812',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(185,1,'185','Hamid Khan','',NULL,'4232',NULL,'Abdul Rasheed',NULL,NULL,NULL,NULL,NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(186,1,'186','Muhammad Arshad','',NULL,'4232',NULL,'Muhammad Rasheed Khan',NULL,NULL,NULL,'0321-2380932',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(187,1,'187','Abdul Waheed','',NULL,'4232',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0342-2091752',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(188,1,'188','Itehaaq Ali ','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0333-3103069',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(189,1,'189','Dilshaad Ali ','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'03136-2693962',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(190,1,'190','Irshad Ali ','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-2056446',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(191,1,'191','Khursheed Ali','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-2050188',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(192,1,'192','Shamshaad Ali','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0333-3299328',NULL,NULL,'Nazimabad#1 Siraaj Colony (KKCI)',NULL,'Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(193,1,'193','Engr. Ali Raza','',NULL,'4232',NULL,'Sadiq Ali Sher',NULL,NULL,NULL,'0313-3582446',NULL,NULL,'Safora Ghot Old Raveen Society',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(194,1,'194','Abdul Rasheed Khan','',NULL,'4232',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0346-2412488',NULL,NULL,'Shumail Complex Mosamiyat Safora',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(195,1,'195','Shahzad Ahmed','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-2622797',NULL,NULL,'Nabi View Mosamiyat Chowrangi Safora',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(196,1,'196','DSR Rahid Ahmed','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0333-2741863',NULL,NULL,'Shumail Complex Mosamiyat Safora',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(197,1,'197','Abdul Ghaffar Khan','',NULL,'4232',NULL,'Muhammad Ilyas Khan',NULL,NULL,NULL,'0302-2691232',NULL,NULL,'Shumail Complex Mosamiyat Safora',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(198,1,'198','Engr. Khizar Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0324-2351322',NULL,NULL,'Shumail Complex Mosamiyat Safora',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(199,1,'199','Manzoor Ahmed','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-3945837',NULL,NULL,'D 33 Block Sayed Village Malir Cant. Check Post 6',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(200,1,'200','Maqbool Ahmed','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-2223538',NULL,NULL,'D 33 Block Sayed Village Malir Cant. Check Post 6',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(201,1,'201','Muhammad Naeem','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,'0333-2222576',NULL,NULL,'D 22 Block Sayed Village Malir Cant. Check Post 6',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(202,1,'202','Anees Ahmed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'D 23 Block Sayed Village Malir Cant. Check Post 6',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(203,1,'203','Muhammad Aslam','',NULL,'4232',NULL,'Moula Baksh',NULL,NULL,NULL,'0331-3819081',NULL,NULL,'A 154  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(204,1,'204','Muhammad Aslam','',NULL,'4232',NULL,'Nawab Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'A 158  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(205,1,'205','Hassan Ahmed','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0333-2695529',NULL,NULL,'R 32-A Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(206,1,'206','Khalid Hussain','',NULL,'4232',NULL,'Shoakat Khan',NULL,NULL,NULL,'0333-2309953',NULL,NULL,'R 177  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(207,1,'207','Shakeel Ahmed','',NULL,'4232',NULL,'Sagheer Ahmed',NULL,NULL,NULL,'0302-8374999',NULL,NULL,'A1- 63  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(208,1,'208','Niaz  Daud','',NULL,'4232',NULL,'Daud Ali Khan',NULL,NULL,NULL,'0336-2626690',NULL,NULL,'R 709   Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(209,1,'209','Muhammad Iqbal Khan','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0335-3117552',NULL,NULL,'R 950  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(210,1,'210','Zia Ur Rehman','',NULL,'4232',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0300-9269276',NULL,NULL,'A-1175  Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(211,1,'211','Muhammad Sohail','',NULL,'4232',NULL,'Muhammad Yameen Khan',NULL,NULL,NULL,'0333-3887607',NULL,NULL,'Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(212,1,'212','Muhammad Kaleem Khan','',NULL,'4232',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0300-8686176',NULL,NULL,'B 32 A Rizwan Society Safora Goth',NULL,'Safora Ghot','Sindh','Karachi',NULL,NULL,NULL),
(213,1,'213','Engr. Adil Nadem','',NULL,'4232',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0321-8739599',NULL,NULL,'A-239 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(214,1,'214','Amir Nadeem','',NULL,'4232',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0333-2767680',NULL,NULL,'A-239 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(215,1,'215','Engr. Abdul Sattar','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0302-8240615',NULL,NULL,'D.T.B Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(216,1,'216','Engr. Muhammad Nadeem','',NULL,'4232',NULL,'Muhammad Hakeem Khan',NULL,NULL,NULL,'0334-2619491',NULL,NULL,'D.T.B Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(217,1,'217','Dr. Ahmed Faheem','',NULL,'4232',NULL,'Muhammad Hakeem Khan',NULL,NULL,NULL,'0302-2836866',NULL,NULL,'D.T.B Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(218,1,'218','Dr. Muhammad Akhbar Ali','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0301-2410665',NULL,NULL,'R-29 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(219,1,'219','Muhammad Zeeshan','',NULL,'4232',NULL,'Muhammad Ashraf',NULL,NULL,NULL,'0333-2630527',NULL,NULL,'R-31 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(220,1,'220','Muhammad Ayoob','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0334-2223366',NULL,NULL,'A-691/12 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(221,1,'221','Mubashir Husain','',NULL,'4232',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'0300-7069820',NULL,NULL,'A-691/12 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(222,1,'222','Muhammad Farooq','',NULL,'4232',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'0333-3790155',NULL,NULL,'A-691/12 Blk 12 FB Area Gulberg',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(223,1,'223','Dr. Muhammad Hasan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-286626',NULL,NULL,'R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(224,1,'224','Dr. Ahsan','',NULL,'4232',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0334-3466386',NULL,NULL,'R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(225,1,'225','Dr. Tehseen ','',NULL,'4232',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0312-3639120',NULL,NULL,'R-437 Blk 12 FB Area Gulberg (Arohi Clanic)',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(226,1,'226','Dr. Roshan Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-8419086',NULL,NULL,'R-436 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(227,1,'227','Engr. Muhammad Arsalan','',NULL,'4232',NULL,'Dr. Muhammad Roshan',NULL,NULL,NULL,'0333-3300759',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(228,1,'228','Engr. Muhammad Daood','',NULL,'4232',NULL,'Dr. Muhammad Roshan',NULL,NULL,NULL,'0331-2709090',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(229,1,'229','Imtiaz Ali','',NULL,'4232',NULL,'Muhammad Nazeer Khan',NULL,NULL,NULL,'0333-2208536',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(230,1,'230','Engr. Naeem','',NULL,'4232',NULL,'Allaudin',NULL,NULL,NULL,'0300-2451235',NULL,NULL,'L-63 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(231,1,'231','Engr. Farhan Ahmed','',NULL,'4232',NULL,'Allaudin',NULL,NULL,NULL,'0331-3560373',NULL,NULL,'L-63 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(232,1,'232','Dr. Naeem','',NULL,'4232',NULL,'Allaudin',NULL,NULL,NULL,'0311-8188910',NULL,NULL,'L-63 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(233,1,'233','Engr. Muhammad Waseem','',NULL,'4232',NULL,'Allaudin',NULL,NULL,NULL,'0321-2131515',NULL,NULL,'L-63 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(234,1,'234','Engr. Muhammad Arif','',NULL,'4232',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0300-2975001',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(235,1,'235','Ghulam Rasool','',NULL,'4232',NULL,'Haji Muhammad Sulaiman',NULL,NULL,NULL,'0300-3618354',NULL,NULL,'A-682 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(236,1,'236','Aleem Khan','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,'0304-2507335',NULL,NULL,'L-32 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(237,1,'237','Engr. Muhammad Umer','',NULL,'4232',NULL,'Aleem Khan',NULL,NULL,NULL,'0333-2392610',NULL,NULL,'L-32 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(238,1,'238','Engr. Muhammad Saifullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0312-2117760',NULL,NULL,'L-32 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(239,1,'239','Muhammad Aslam','',NULL,'4232',NULL,'Husain Khan',NULL,NULL,NULL,'0333-2929043',NULL,NULL,'A-170 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(240,1,'240','Dr. Abdul Wahab ','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0301-2936170',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(241,1,'241','Engr. Abdul Saad Aslam','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3697844',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(242,1,'242','Engr. Moaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0344-3764398',NULL,NULL,'',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(243,1,'243','Engr. Muhammad Anwer Khan','',NULL,'4232',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0333-2286349',NULL,NULL,'A-839 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(244,1,'244','Engr. Sallaudin Khan','',NULL,'4232',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0345-3954400',NULL,NULL,'A-839 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(245,1,'245','Engr. Muhammad Asif Khan','',NULL,'4232',NULL,'Allaudin Khan Advocate',NULL,NULL,NULL,'0333-2286342',NULL,NULL,'Civil Line PIDC',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(246,1,'246','Jamshed Ali Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-2344744',NULL,NULL,'R-24 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(247,1,'247','Capt. Muhammad Waqas','',NULL,'4232',NULL,'Jamshed Ali Khan',NULL,NULL,NULL,'0333-3640447',NULL,NULL,'R-24 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(248,1,'248','Capt. Waqar Jamshed','',NULL,'4232',NULL,'Jamshed Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'R-24 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(249,1,'249','Muhammad Shafiq Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0313-2632446',NULL,NULL,'A-915 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(250,1,'250','Muhammad Adnan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3174897',NULL,NULL,'A-915 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(251,1,'251','Muhammad Sarfaraz','',NULL,'4232',NULL,'Sikandar Khan',NULL,NULL,NULL,'0333-3401173',NULL,NULL,'R-22 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(252,1,'252','Ashiq Nadeem','',NULL,'4232',NULL,'Atta Muhammad Khan',NULL,NULL,NULL,'0333-2767680',NULL,NULL,'A-239 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(253,1,'253','Asim Nadeem','',NULL,'4232',NULL,'Ashiq Nadeem',NULL,NULL,NULL,'0333-3755150',NULL,NULL,'A-239 Blk 12 FB Area Gulberg ',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(254,1,'254','Shehryar ','',NULL,'4232',NULL,'Jhangsher Ali Khan',NULL,NULL,NULL,'0333-2991903',NULL,NULL,'Hasan Apartments Ayesha Manzil',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(255,1,'255','Ali','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0333-27055477',NULL,NULL,'Hasan Apartments Ayesha Manzil',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(256,1,'256','Muhammad Waleed','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0333-2577143',NULL,NULL,'Hasan Apartments Ayesha Manzil',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(257,1,'257','Taimooor','',NULL,'4232',NULL,'Bashir Ahmed',NULL,NULL,NULL,'',NULL,NULL,'Hasan Apartments Ayesha Manzil',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(258,1,'258','Hasnain Ali','',NULL,'4232',NULL,'Munawar Ali',NULL,NULL,NULL,'',NULL,NULL,'Hasan Apartments Ayesha Manzil',NULL,'Gulberg','Sindh','Karachi',NULL,NULL,NULL),
(259,1,'259','Naimat Ali Khan','',NULL,'4232',NULL,'Abdullah Khan',NULL,NULL,NULL,'0300-2453900',NULL,NULL,'Naya Golimaar Petal Gali',NULL,'Naya Golimaar ','Sindh','Karachi',NULL,NULL,NULL),
(260,1,'260','Salman Naimat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-8260080',NULL,NULL,'Naya Golimaar Petal Gali',NULL,'Naya Golimaar ','Sindh','Karachi',NULL,NULL,NULL),
(261,1,'261','Muhammad Imran','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0311-8260080',NULL,NULL,'Naya Golimaar Petal Gali',NULL,'Naya Golimaar ','Sindh','Karachi',NULL,NULL,NULL),
(262,1,'262','Jamshed Ali ','',NULL,'4232',NULL,'Peer Muhammad Khan',NULL,NULL,NULL,'0334-3353305',NULL,NULL,'Azizabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(263,1,'263','Asfand Nawab','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0332-2909024',NULL,NULL,'Gulshan-e-Shamim Yasinabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(264,1,'264','Nawab Ali','',NULL,'4232',NULL,'Ghulab Khan',NULL,NULL,NULL,'0346-8901090',NULL,NULL,'Gulshan-e-Shamim Yasinabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(265,1,'265','Dr. Nadeem Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-8217776',NULL,NULL,'Gulshan-e-Shamim Yasinabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(266,1,'266','Faheem Ahmed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3583478',NULL,NULL,'Sahil Medical Store Ayesha Manzil',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(267,1,'267','Zuhair Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2052734',NULL,NULL,'Azizabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(268,1,'268','Wazeer Ahmed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Azizabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(269,1,'269','Rasheed Iqbal ','',NULL,'4232',NULL,'Peer Muhammad Khan',NULL,NULL,NULL,'0333-2243138',NULL,NULL,'Askai Tower Yasenabad',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(270,1,'270','Engr. Inamullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-8913152',NULL,NULL,'Azizabad#8 ',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(271,1,'271','Engr. Muhammad Asif','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Azizabad#8 ',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(272,1,'272','Rashid Raza','',NULL,'4232',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0333-9222672',NULL,NULL,'Gulshan-e-Shamim Yasinabad (KK Pakistan Ata Cahki)',NULL,'Azizabad','Sindh','Karachi',NULL,NULL,NULL),
(273,1,'273','Mohsin Ali','',NULL,'4232',NULL,'Engr. Khifayat Ali Khan',NULL,NULL,NULL,'0345-3080126',NULL,NULL,'A-389 Block C Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(274,1,'274','Engr. Shahid Mehboob','',NULL,'4232',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0097-1555163602',NULL,NULL,'C-130 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(275,1,'275','Nabeel Mehboob','',NULL,'4232',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0333-2062785',NULL,NULL,'C-130 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(276,1,'276','Engr. Naveed Mehboob','',NULL,'4232',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0345-2821050',NULL,NULL,'C-130 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(277,1,'277','Engr. Kashif','',NULL,'4232',NULL,'Engr. Mehboob Ali Khan',NULL,NULL,NULL,'0333-362621',NULL,NULL,'C-130 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(278,1,'278','Sajid Ali','',NULL,'4232',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0333-2626367',NULL,NULL,'C-130 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(279,1,'279','Dr. Asim ','',NULL,'4232',NULL,'Dr. Abdul Qayoom',NULL,NULL,NULL,'',NULL,NULL,'C-134 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(280,1,'280','Dr. Abdul Qayoom ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8230735',NULL,NULL,'C-134 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(281,1,'281','Engr. Shamsher Ali Khan','',NULL,'4232',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0300-3364833',NULL,NULL,'C-132 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(282,1,'282','Engr. Muhammad Saqib','',NULL,'4232',NULL,'Engr. Shamsher Ali Khan',NULL,NULL,NULL,'0333-8277718',NULL,NULL,'C-132 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(283,1,'283','Ghulam Muhiuddeen Khan','',NULL,'4232',NULL,'Muhammad Ameen Khan',NULL,NULL,NULL,'0300-2667804',NULL,NULL,'C-413 Block C Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(284,1,'284','Abdul Aziz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'021-36631311',NULL,NULL,'C-409 Block C Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(285,1,'285','Akber Ali Khan','',NULL,'4232',NULL,'Asfer Ali Khan',NULL,NULL,NULL,'0336-3794522',NULL,NULL,'A-298 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(286,1,'286','Mansoor Ali Khan','',NULL,'4232',NULL,'Akhber Ali Khan',NULL,NULL,NULL,'0321-2465973',NULL,NULL,'A-298 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(287,1,'287','Muhammad Arshad ','',NULL,'4232',NULL,'Muhammad Ahmed',NULL,NULL,NULL,'0332-3404246',NULL,NULL,'B-37 Block D Haidri North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(288,1,'288','Muhammad Sohail','',NULL,'4232',NULL,'Liaquat Ali Khan',NULL,NULL,NULL,'0321-2202277',NULL,NULL,'Saima Grand 5 star chowrangi',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(289,1,'289','Shait Farooq Ahmed Khan','',NULL,'4232',NULL,'Shaffi Khan',NULL,NULL,NULL,'0322-9240008',NULL,NULL,'D-5 Block L 5 Star Chowrangi',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(290,1,'290','Rehan Farooq ','',NULL,'4232',NULL,'Shait Farooq Ahmed Khan',NULL,NULL,NULL,'0321-9240008',NULL,NULL,'D-5 Block L 5 Star Chowrangi',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(291,1,'291','Shait Javed Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Waseem Akram Road KDA chowrangi',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(292,1,'292','Imdad Ali','',NULL,'4232',NULL,'Feroz Khan',NULL,NULL,NULL,'0345-6111466',NULL,NULL,'F9 Shalimaar Center Block K North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(293,1,'293','Zafar Iqbal','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0345-6111466',NULL,NULL,'F9 Shalimaar Center Block K North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(294,1,'294','Engr. Shakeel Ahmed','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0300-2461615',NULL,NULL,'F9 Shalimaar Center Block K North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(295,1,'295','Liaquat Ali','',NULL,'4232',NULL,'Khuda Bakhs',NULL,NULL,NULL,'0333-3067189',NULL,NULL,'Saima Apartments Block K North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(296,1,'296','Ather Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2346155',NULL,NULL,'Fareed Heights Block K North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(297,1,'297','Muhammad Asif ','',NULL,'4232',NULL,'Muhammad  Yousuf',NULL,NULL,NULL,'0300-2396688',NULL,NULL,'North Nazimabad Board Office PTCL Colony',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(298,1,'298','Muhammad Akhter','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2616442',NULL,NULL,'North Nazimabad Board Office Khando Ghot',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(299,1,'299','Muhammad Aslam Khan','',NULL,'4232',NULL,'Abdul Raheem Khan',NULL,NULL,NULL,'',NULL,NULL,'(PTCL) TNT D.C Office Shaki Hasan',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(300,1,'300','Akhter Ali','',NULL,'4232',NULL,'Abdul Raheem Khan',NULL,NULL,NULL,'',NULL,NULL,'(K.E) Nageena Square 2K Stop Morth Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(301,1,'301','Liaquat Ali','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0334-3307025',NULL,NULL,'Haidri North Nazimabad Block H',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(302,1,'302','Nisar Khan','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8299676',NULL,NULL,'B-84 Block I North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(303,1,'303','Riaz Khan','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8276908',NULL,NULL,'B-85 Block I North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(304,1,'304','Usman Ali','',NULL,'4232',NULL,'Nawab Ali Khan ',NULL,NULL,NULL,'0333-3193075',NULL,NULL,'A-201/2 Rajpoot Apartments North Nazimabad Block G',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(305,1,'305','Jaffer Ali Khan','',NULL,'4232',NULL,'Raheem Ali Khan',NULL,NULL,NULL,'0331-2483834',NULL,NULL,'C 1/4 Block G Al-Arham Square Haidri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(306,1,'306','Yasir Ali Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-2106941',NULL,NULL,'C 1/4 Block G Al-Arham Square Haidri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(307,1,'307','Habib ur Rehman','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0336-2181849',NULL,NULL,'C 1/4 Block G Al-Arham Square Haidri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(308,1,'308','Azhar Adnan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0336-2104896',NULL,NULL,'C 1/4 Block G Al-Arham Square Haidri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(309,1,'309','Maqsood Ali ','',NULL,'4232',NULL,'Amrao Ali Khan',NULL,NULL,NULL,'0333-3858645',NULL,NULL,'A/277 Block 7 North Nazimabad ',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(310,1,'310','Muhammad Asif ','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0322-7770101',NULL,NULL,'A/277 Block 7 North Nazimabad ',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(311,1,'311','Muhammad Muzaffar ','',NULL,'4232',NULL,'Noor Muhammad Khan',NULL,NULL,NULL,'0333-2101907',NULL,NULL,'Block H North Nazimabad ',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(312,1,'312','Shoail Ahmed','',NULL,'4232',NULL,'Mehfooz Ali Khan',NULL,NULL,NULL,'0345-3356755',NULL,NULL,'KDA Flat Near Abdullah College North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(313,1,'313','Muhammad Imran','',NULL,'4232',NULL,'Khifayat Ali Khan',NULL,NULL,NULL,'0331-7513207',NULL,NULL,' North Nazimabad Block 4',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(314,1,'314','Abid Mehmood','',NULL,'4232',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0300-9490800',NULL,NULL,'North Nazimabad Board Office Asghr Hospital',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(315,1,'315','Muhammad Waseem','',NULL,'4232',NULL,'Babu Muhammad Younus',NULL,NULL,NULL,'0333-2764009',NULL,NULL,'North Nazimabad Board Office',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(316,1,'316','Sagheer Ahmed','',NULL,'4232',NULL,'Aslam Ali',NULL,NULL,NULL,'0331-2042867',NULL,NULL,'North Nazimabad Board Office',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(317,1,'317','Muhammad Younus','',NULL,'4232',NULL,'Asghar Khan',NULL,NULL,NULL,'0332-2173891',NULL,NULL,'North Nazimabad Board Office',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(318,1,'318','Muhammad Akram','',NULL,'4232',NULL,'Abdul Qadeer Khan',NULL,NULL,NULL,'0314-2327040',NULL,NULL,'North Nazimabad Board Office',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(319,1,'319','Abdul Qadeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-3809432',NULL,NULL,'North Nazimabad Board Office',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(320,1,'320','Muhammad Naeem','',NULL,'4232',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'',NULL,NULL,'House# B-230 Block D North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(321,1,'321','Muhammad Saleem','',NULL,'4232',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0334-3359963',NULL,NULL,'House# B-230 Block D North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(322,1,'322','Muhammad Waseem','',NULL,'4232',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0334-0319154',NULL,NULL,'House# B-230 Block D North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(323,1,'323','Muhammad Nadeem','',NULL,'4232',NULL,'Sobedar Muhammad Amin Khan',NULL,NULL,NULL,'0336-2765939',NULL,NULL,'House# B-230 Block D North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(324,1,'324','Farrukh Naeem','',NULL,'4232',NULL,'Muhammad Naeem Khan',NULL,NULL,NULL,'0321-2099888',NULL,NULL,'House# B-230 Block D North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(325,1,'325','Muhammad Shoaib','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-8249730',NULL,NULL,'A-409 Block C North Nazimabad Haideri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(326,1,'326','Ghulam Jilani ','',NULL,'4232',NULL,'Major Muhammad Amin Khan',NULL,NULL,NULL,'0300-8277901',NULL,NULL,'A-413 Block C North Nazimabad Haideri',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(327,1,'327','Muhammad Khalil','',NULL,'4232',NULL,'Muhammad Shafi Khan',NULL,NULL,NULL,'0345-9257888',NULL,NULL,'H# B 415/3 Sector 11 E New Fatima Jinnah Colony No',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(328,1,'328','Eng Muhammad Usman ','',NULL,'4232',NULL,'Muhammad Shafi Khan',NULL,NULL,NULL,'0333-2111899',NULL,NULL,'A-272 Block# I North Nazimabad',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(329,1,'329','Imran Arshad ','',NULL,'4232',NULL,'         Arshad Ali Khan',NULL,NULL,NULL,'0333-2485896',NULL,NULL,'A-231 First Floor Block# A North Nazimabad ',NULL,'North Nazimabad','Sindh','Karachi',NULL,NULL,NULL),
(330,1,'330','Asif Iqbal ','',NULL,'4232',NULL,'Qurban Ali',NULL,NULL,NULL,'0300-3331559',NULL,NULL,'E-31 Rafi Mention Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(331,1,'331','Abdul Aziz','',NULL,'4232',NULL,'Farzand Ali',NULL,NULL,NULL,'0333-2182332',NULL,NULL,'E-31 Rafi Mention Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(332,1,'332','Danish Ahmed','',NULL,'4232',NULL,'Muhammad Riaz',NULL,NULL,NULL,'0335-2412625',NULL,NULL,'E-31 Rafi Mention Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(333,1,'333','Ayyaz Ahmed','',NULL,'4232',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0300-3283184',NULL,NULL,'E-31 Rafi Mention Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(334,1,'334','Imran Usman','',NULL,'4232',NULL,'Muhamamd Usman',NULL,NULL,NULL,'0331-280303',NULL,NULL,'Shah Faisal Alfalah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(335,1,'335','Nisar Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2060742',NULL,NULL,'CA-27 Shah Faisal Alfallah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(336,1,'336','Muhammad Imran ','',NULL,'4232',NULL,'Farman Ali',NULL,NULL,NULL,'0345-3314491',NULL,NULL,'CA-27 Shah Faisal Alfallah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(337,1,'337','Zulfiquar Ali','',NULL,'4232',NULL,'Murad Ali',NULL,NULL,NULL,'0307-2999925',NULL,NULL,'Saleem Apartments Shah Faisal Alfallah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(338,1,'338','Shoukat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3622640',NULL,NULL,'Shah Faisal Alfalah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(339,1,'339','Faisal Shoukat','',NULL,'4232',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0315-8879390',NULL,NULL,'Shah Faisal Alfalah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(340,1,'340','Naseer Ahmed','',NULL,'4232',NULL,'Muhammad Sharif',NULL,NULL,NULL,'0333-2532570',NULL,NULL,'Shah Faisal Alfalah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(341,1,'341','Muhammad Naveed','',NULL,'4232',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Shah Faisal Alfalah',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(342,1,'342','Muhammad Sharif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(343,1,'343','Engr. Ali Muhammad ','',NULL,'4232',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0334-3450746',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(344,1,'344','Adil Inteezar','',NULL,'4232',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0332-3820576',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(345,1,'345','Engr. Abid Ali','',NULL,'4232',NULL,'Inteezar Ali Khan',NULL,NULL,NULL,'0334-3450746',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(346,1,'346','Muhammad Rizwan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(347,1,'347','Muhammad Saleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(348,1,'348','Asghar Ali Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0333-3741451',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(349,1,'349','Muhammad Naeem','',NULL,'4232',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0300-2319931',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(350,1,'350','Javed Ali','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0335-2087692',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(351,1,'351','Muhammad Shafiq','',NULL,'4232',NULL,'Istiaque Ali',NULL,NULL,NULL,'0333-2197090',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(352,1,'352','Muhammad Ashfaq','',NULL,'4232',NULL,'Istiaque Ali',NULL,NULL,NULL,'0333-2337034',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(353,1,'353','Nadeem Maqsood ','',NULL,'4232',NULL,'Maqsood Ali',NULL,NULL,NULL,'0322-3618551',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(354,1,'354','Nafees Maqsood','',NULL,'4232',NULL,'Maqsood Ali',NULL,NULL,NULL,'0301-2233467',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(355,1,'355','Sajjid Jameel','',NULL,'4232',NULL,'Prof. Jameel Ahmed',NULL,NULL,NULL,'0333-3772248',NULL,NULL,'H#64 Street#2 Green Town Shah faisal Colony',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(356,1,'356','Engr. Faisal Saleem','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3323457',NULL,NULL,'Street # 4 Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(357,1,'357','Engr. Shariq Saleem','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0333-2983107',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(358,1,'358','Maqsood Ali Khan','',NULL,'4232',NULL,'Babu Zaffar Ali Khan',NULL,NULL,NULL,'0301-2233467',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(359,1,'359','Istiaque Ali Khan','',NULL,'4232',NULL,'Babu Zaffar Ali Khan',NULL,NULL,NULL,'0333-3776403',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(360,1,'360','Riasat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(361,1,'361','Nisar Ali ','',NULL,'4232',NULL,'Hoshiyar Ali Khan',NULL,NULL,NULL,'0333-1370050',NULL,NULL,'Green Town Shah Faisal',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(362,1,'362','Asghar Ali','',NULL,'4232',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0333-3741451',NULL,NULL,'G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(363,1,'363','Abbas Ali','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(364,1,'364','Waqas Ali','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'G-127  Green Town Shah Faisal Colony 1 Natha Khan ',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(365,1,'365','Ali Ahmed  ','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0342-2751158',NULL,NULL,'Sadat Colony Drigh Road Shah Faisal Colony',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(366,1,'366','Nayamat Ali ','',NULL,'4232',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0333-3369708',NULL,NULL,'Sadat Colony Drigh Road Shah Faisal Colony',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(367,1,'367','Imran Khan ','',NULL,'4232',NULL,'Muhammad Shoakat Khan',NULL,NULL,NULL,'0302-2179224',NULL,NULL,'Sadat Colony Drigh Road Shah Faisal Colony',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(368,1,'368','Ali Hassan','',NULL,'4232',NULL,'Muhammad Iqbal Khan',NULL,NULL,NULL,'0306-9459659',NULL,NULL,'Sadat Colony Drigh Road Shah Faisal Colony',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(369,1,'369','Sajid Jamil ','',NULL,'4232',NULL,'Jamil Ahmed Khan',NULL,NULL,NULL,'0333-372248',NULL,NULL,'MC -64   Street 02 Green Town ',NULL,'Shah Faisal Colony','Sindh','Karachi',NULL,NULL,NULL),
(370,1,'370','Col. Niaz Muhammad','',NULL,'4232',NULL,'Chiragh Ali Khan',NULL,NULL,NULL,'0343-2223250',NULL,NULL,'39-G Askari 3 Cantt. Station',NULL,'Askari 3 & 4','Sindh','Karachi',NULL,NULL,NULL),
(371,1,'371','Nawab Shahzad Ali','',NULL,'4232',NULL,'Aleemuddin Khan',NULL,NULL,NULL,'0303-2515616',NULL,NULL,'23-B Askari 3 Cantt. Station',NULL,'Askari 3 & 5','Sindh','Karachi',NULL,NULL,NULL),
(372,1,'372','Ghulm Dastageer','',NULL,'4232',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0332-3532433',NULL,NULL,'23-H Askari 3 Cantt. Station',NULL,'Askari 3 & 6','Sindh','Karachi',NULL,NULL,NULL),
(373,1,'373','Lt.Cdr. Ghulam Qadir','',NULL,'4232',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0331-4511225',NULL,NULL,'23-H Askari 3 Cantt. Station',NULL,'Askari 3 & 7','Sindh','Karachi',NULL,NULL,NULL),
(374,1,'374','Major Noor Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'021-35661259',NULL,NULL,'46-B Askari 3 Cantt. Station',NULL,'Askari 3 & 8','Sindh','Karachi',NULL,NULL,NULL),
(375,1,'375','Moaz Ahmed','',NULL,'4232',NULL,'Major Noor Khan',NULL,NULL,NULL,'0300-2697678',NULL,NULL,'46-B Askari 3 Cantt. Station',NULL,'Askari 3 & 9','Sindh','Karachi',NULL,NULL,NULL),
(376,1,'376','Muhammad Younus','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'11-B Askari 3 Cantt. Station',NULL,'Askari 3 & 10','Sindh','Karachi',NULL,NULL,NULL),
(377,1,'377','Azad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'53-G Askari 3 Cantt. Station',NULL,'Askari 3 & 11','Sindh','Karachi',NULL,NULL,NULL),
(378,1,'378','Muhammad Rizwan','',NULL,'4232',NULL,'Engr. Khifayat Ali Khan',NULL,NULL,NULL,'0321-8239639',NULL,NULL,'Askari 4 Block 102 Flat E',NULL,'Askari 3 & 12','Sindh','Karachi',NULL,NULL,NULL),
(379,1,'379','Javed Akber','',NULL,'4232',NULL,'Akber Ali Khan',NULL,NULL,NULL,'021-34660834',NULL,NULL,'Askari 4 Block 101 Flat H',NULL,'Askari 3 & 13','Sindh','Karachi',NULL,NULL,NULL),
(380,1,'380','Col. Sabir Usman','',NULL,'4232',NULL,'Usman Khan',NULL,NULL,NULL,'0333-2500160',NULL,NULL,'Askari 4 Block 141 Flat B',NULL,'Askari 3 & 14','Sindh','Karachi',NULL,NULL,NULL),
(381,1,'381','Sarfaraz Ahmed','',NULL,'4232',NULL,'Muhammad Hussain Khan',NULL,NULL,NULL,'0300-9258259',NULL,NULL,'Askari 4 Block 101 Flat F',NULL,'Askari 3 & 15','Sindh','Karachi',NULL,NULL,NULL),
(382,1,'382','Major Intesar Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2073417',NULL,NULL,'Askari 4 Block ',NULL,'Askari 3 & 16','Sindh','Karachi',NULL,NULL,NULL),
(383,1,'383','Khuram Abbas','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2377760',NULL,NULL,'Askari 4 Block ',NULL,'Askari 3 & 17','Sindh','Karachi',NULL,NULL,NULL),
(384,1,'384','Parveez Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Banglow 163 E 10 A Street  2nd last Right Askari 4',NULL,'Askari 3 & 18','Sindh','Karachi',NULL,NULL,NULL),
(385,1,'385','Irfan Ali','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0333-2351650',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(386,1,'386','Imran Ali','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0331-7513207',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(387,1,'387','Muhammad Aslam ','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0332-2613097',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(388,1,'388','Kamran Al','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0345-2183612',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(389,1,'389','Muhammad Shafeeq','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-3152019',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(390,1,'390','Shahbaz Ali','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-3152018',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(391,1,'391','Tahir Parvez Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2231808',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(392,1,'392','Muhammad Aktar','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2462432',NULL,NULL,'TNT Officer colony Jinnah Hospital',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(393,1,'393','Muhammad Waqas','',NULL,'4232',NULL,'Muhammad Akhtar',NULL,NULL,NULL,'0333-2462432',NULL,NULL,'TNT Officer colony Jinnah Hospital',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(394,1,'394','Mazhar Hussain','',NULL,'4232',NULL,'Muhammad Hussain',NULL,NULL,NULL,'0321-8275396',NULL,NULL,'S-30 DHA Phase 2',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(395,1,'395','Mehmood Ali','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0333-2381952',NULL,NULL,'R 331 Sector 4 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(396,1,'396','Abdul Sattar Khan','',NULL,'4232',NULL,'Abdul Karim Khan',NULL,NULL,NULL,'0332-7871268',NULL,NULL,'Sector 4 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(397,1,'397','Engr. Shams Sattar','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-6660318',NULL,NULL,'Sector 4 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(398,1,'398','Engr. Amman Sattar','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-4969102',NULL,NULL,'Sector 4 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(399,1,'399','Muhammad Usman','',NULL,'4232',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0334-3501210',NULL,NULL,'R-860 Sector 15 A3 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(400,1,'400','Muhammad Akber','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0345-2126236',NULL,NULL,'R-860 Sector 15 A3 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(401,1,'401','Asif Usman','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0333-1583394',NULL,NULL,'R-860 Sector 15 A3 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(402,1,'402','Muzaffar Husain Khan (HBFC)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2252881',NULL,NULL,'Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(403,1,'403','Engr. Haji Zulqurnen ','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0334-1283394',NULL,NULL,'R-315 Sector 4 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(404,1,'404','Muhammad Mustaq','',NULL,'4232',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0300-2891459',NULL,NULL,'R 302 Sector 15A5 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(405,1,'405','Muhammad Aslam ','',NULL,'4232',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0334-3041245',NULL,NULL,'Flat# E3 Setalite Colony TNT Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(406,1,'406','Muhammad Khalid','',NULL,'4232',NULL,'Karam Sher Khan',NULL,NULL,NULL,'0300-9234506',NULL,NULL,'H# E-3 Sector 15/A/1 Baforzone',NULL,'Baforzone','Sindh','Karachi',NULL,NULL,NULL),
(407,1,'407','Ghulzar Ahmed','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-2399446',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(408,1,'408','Bilal Liaquat','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-2489875',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(409,1,'409','Muhammad Idrees','',NULL,'4232',NULL,'Fakhar Ali',NULL,NULL,NULL,'0333-0230081',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(410,1,'410','Waseem Ahmed','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0333-3880422',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(411,1,'411','Haji Ghulam Mustafa','',NULL,'4232',NULL,'Peero Khan',NULL,NULL,NULL,'0345-2994349',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(412,1,'412','Imran Mustafa','',NULL,'4232',NULL,'Ghulam Mustafa',NULL,NULL,NULL,'0345-2994349',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(413,1,'413','Asif Ali','',NULL,'4232',NULL,'Sarwar Ali',NULL,NULL,NULL,'0315-2037646',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(414,1,'414','Riaz Ahmed','',NULL,'4232',NULL,'Umeed Ali',NULL,NULL,NULL,'0300-9294269',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(415,1,'415','Shahid Hidayat','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'0334-3344998',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(416,1,'416','Muhammad Naeem','',NULL,'4232',NULL,'Bhawer Ali',NULL,NULL,NULL,'0334-3914150',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(417,1,'417','Engr. Noman Shabeer','',NULL,'4232',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0332-9638215',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(418,1,'418','Muhammad Ayoub','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0345-8085386',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(419,1,'419','Muhammad Yasir','',NULL,'4232',NULL,'Khifayat Ali',NULL,NULL,NULL,'0341-0026075',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(420,1,'420','Laiq Yameen','',NULL,'4232',NULL,'Yameen Ali',NULL,NULL,NULL,'0336-0355791',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(421,1,'421','Muhammad Yaqoob','',NULL,'4232',NULL,'Rehmat Ali',NULL,NULL,NULL,'0333-3494579',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(422,1,'422','Shafqat Ali','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0300-3377164',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(423,1,'423','Muhammad Ikram','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0303-2940863',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(424,1,'424','Shabir Ahmed','',NULL,'4232',NULL,'Yousuf Ali',NULL,NULL,NULL,'0302-484552',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(425,1,'425','Sarfaraz Nawaz','',NULL,'4232',NULL,'Riasat Ali',NULL,NULL,NULL,'0333-2359857',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(426,1,'426','Zahid Mehmood','',NULL,'4232',NULL,'Mehmood Ali',NULL,NULL,NULL,'0334-9490800',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(427,1,'427','Hakim Ali','',NULL,'4232',NULL,'Muqarab Khan',NULL,NULL,NULL,'0300-2102260',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(428,1,'428','Zulfiquar Ali','',NULL,'4232',NULL,'Wahid Ali ',NULL,NULL,NULL,'0303-2197525',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(429,1,'429','Muhammad Ayoub','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0321-3872145',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(430,1,'430','Muhammad Asif','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0332-2920965',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(431,1,'431','Maqsood Ali','',NULL,'4232',NULL,'Mustaque Ali',NULL,NULL,NULL,'0345-5469906',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(432,1,'432','Abdul Jabbar','',NULL,'4232',NULL,'Muhammad Amin',NULL,NULL,NULL,'0323-3286886',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(433,1,'433','Muhammad Arshad','',NULL,'4232',NULL,'Abdul Waheed',NULL,NULL,NULL,'0301-3989500',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(434,1,'434','Abdul Sattar','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0345-2676982',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(435,1,'435','Muhammad Asif Kareem','',NULL,'4232',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0333-7711051',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(436,1,'436','Muhammad Saleem','',NULL,'4232',NULL,'Bahnoor Ali Khan',NULL,NULL,NULL,'0321-2971876',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(437,1,'437','Shakeel Ahmed','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0336-2744608',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(438,1,'438','Muhammad Tariq','',NULL,'4232',NULL,'Abdul Hakim',NULL,NULL,NULL,'0333-2829811',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(439,1,'439','Muhammad Saleem','',NULL,'4232',NULL,'Yaseem Khan',NULL,NULL,NULL,'0334-2554607',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(440,1,'440','Muhammad Akram','',NULL,'4232',NULL,'Jeeon Khan',NULL,NULL,NULL,'0301-3287207',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(441,1,'441','Ali Bahadur','',NULL,'4232',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0346-2429566',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(442,1,'442','Muhammad Saleem','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-2547893',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(443,1,'443','Muhammad Zahid','',NULL,'4232',NULL,'Ayoub Ali',NULL,NULL,NULL,'0315-8617716',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(444,1,'444','Muhammad Javed','',NULL,'4232',NULL,'Munshi Khan',NULL,NULL,NULL,'0345-1182036',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(445,1,'445','Hidayat Ali','',NULL,'4232',NULL,'Muhammad Idress',NULL,NULL,NULL,'0332-3047655',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(446,1,'446','Amjad Iqbal','',NULL,'4232',NULL,'Imtiaz Ali',NULL,NULL,NULL,'0300-2933443',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(447,1,'447','Muhammad Rafiq','',NULL,'4232',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0321-2168252',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(448,1,'448','Abdul Manan Khan','',NULL,'4232',NULL,'Abdul Razzaq Khan',NULL,NULL,NULL,'0335-3481612',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(449,1,'449','Muhammad Shafiq','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0336-0355791',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(450,1,'450','Muhammad Danish','',NULL,'4232',NULL,'Aslam Khan',NULL,NULL,NULL,'0345-2279482',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(451,1,'451','Zakir Husain','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0302-8289410',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(452,1,'452','Abdul Rehman','',NULL,'4232',NULL,'Jeeon Khan',NULL,NULL,NULL,'0333-3539204',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(453,1,'453','Abdul Raheem','',NULL,'4232',NULL,'Jeeon Khan',NULL,NULL,NULL,'0334-3918705',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(454,1,'454','Haq Nawaz','',NULL,'4232',NULL,'Muhammad Hasan',NULL,NULL,NULL,'0345-1182829',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(455,1,'455','Faheem Ahmed','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0333-2188430',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(456,1,'456','Muhammad Rafiq','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0311-2444868',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(457,1,'457','Imdad Ali','',NULL,'4232',NULL,'Manho Khan',NULL,NULL,NULL,'0334-2185183',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(458,1,'458','Muhammad Iqbal','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0308-2090150',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(459,1,'459','Muhammad Asif','',NULL,'4232',NULL,'Muhammad Younus',NULL,NULL,NULL,'0345-6021324',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(460,1,'460','Mehsher Ali','',NULL,'4232',NULL,'Muhammad Maqsood',NULL,NULL,NULL,'0341-1129077',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(461,1,'461','Abdul Hafeez','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,'0334-1669452',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(462,1,'462','Muhammad Mustafa','',NULL,'4232',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0301-2545657',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(463,1,'463','Javed','',NULL,'4232',NULL,'Yousuf Ali',NULL,NULL,NULL,'0321-2273296',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(464,1,'464','Muhammad Rizwan','',NULL,'4232',NULL,'Muhammad Younus',NULL,NULL,NULL,'0348-2224469',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(465,1,'465','Majid Ali','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0306-3441486',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(466,1,'466','Abdul Qayoom ','',NULL,'4232',NULL,'Yasin Ali',NULL,NULL,NULL,'0334-3043705',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(467,1,'467','Himayat Ali','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0342-2299083',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(468,1,'468','Liaquat Ali Khan','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0344-2622202',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(469,1,'469','Riasat Ali Khan','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0333-2118803',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(470,1,'470','Muhammad Tariq','',NULL,'4232',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0322-3906275',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(471,1,'471','Iftikhar Ahmed','',NULL,'4232',NULL,'Moen-ud-din',NULL,NULL,NULL,'0321-2946088',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(472,1,'472','Ashfaque Ahmed ','',NULL,'4232',NULL,'Ishtiaque Ahmed',NULL,NULL,NULL,'0346-2164554',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(473,1,'473','Mehtab Ali','',NULL,'4232',NULL,'Mushtaq Ali',NULL,NULL,NULL,'0345-2477688',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(474,1,'474','Shamsher Ali','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0301-3325948',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(475,1,'475','Muhammad Akhter','',NULL,'4232',NULL,'Atta Muhammad ',NULL,NULL,NULL,'0333-2154099',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(476,1,'476','Zulfiquar ','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0344-2430334',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(477,1,'477','Muhammad Saleem','',NULL,'4232',NULL,'Bashir Khan',NULL,NULL,NULL,'0333-2172507',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(478,1,'478','Munawar Ali','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0336-8220546',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(479,1,'479','Muhammad Ismail','',NULL,'4232',NULL,'Inayat Ali',NULL,NULL,NULL,'0332-6361376',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(480,1,'480','Javad Ahmed','',NULL,'4232',NULL,'Zulfiquar Ali',NULL,NULL,NULL,'0331-2567354',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(481,1,'481','Niaz Muhammad ','',NULL,'4232',NULL,'Bahao Khan',NULL,NULL,NULL,'',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(482,1,'482','Muhammad Nadeem','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0345-0310474',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(483,1,'483','Abdul Jabbar','',NULL,'4232',NULL,'Abdul Qadir',NULL,NULL,NULL,'0306-2787443',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(484,1,'484','Muhammad Tahir','',NULL,'4232',NULL,'Bahnor Khan',NULL,NULL,NULL,'0312-3296553',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(485,1,'485','Zulfiquar ','',NULL,'4232',NULL,'Abdul Qadir Khan',NULL,NULL,NULL,'0321-7252726',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(486,1,'486','Imran ','',NULL,'4232',NULL,'Qadir Ali',NULL,NULL,NULL,'0341-2055540',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(487,1,'487','Muhammad Shakir','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0331-2200345',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(488,1,'488','Ali Hasan','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0311-3185972',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(489,1,'489','Muhammad Jaffer Khan','',NULL,'4232',NULL,'Shafi Khan',NULL,NULL,NULL,'0315-2343236',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(490,1,'490','Mansoor Ali','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0332-2164570',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(491,1,'491','Abdul Majeed','',NULL,'4232',NULL,'Ahmed Khan',NULL,NULL,NULL,'0348-8331284',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(492,1,'492','Liaquat Ali Khan','',NULL,'4232',NULL,'Inayat Ali',NULL,NULL,NULL,'',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(493,1,'493','Muhammad Ayoub','',NULL,'4232',NULL,'Inayat Ali',NULL,NULL,NULL,'0333-2843422',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(494,1,'494','Jaffer Ali','',NULL,'4232',NULL,'Daood Ali',NULL,NULL,NULL,'0321-8907768',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(495,1,'495','Muhammad Shamim','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0332-2974998',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(496,1,'496','Amir Ali','',NULL,'4232',NULL,'Sarwer Ali',NULL,NULL,NULL,'0336-3703306',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(497,1,'497','Muhammad Rafiq','',NULL,'4232',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0322-3344214',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(498,1,'498','Imran','',NULL,'4232',NULL,'Shamshad Ali',NULL,NULL,NULL,'',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(499,1,'499','Khan Muhammad ','',NULL,'4232',NULL,'Niaz Muhammad ',NULL,NULL,NULL,'0313-8276304',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(500,1,'500','Iftikhar Ahmed','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'0335-2034216',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(501,1,'501','Shahzad Ali','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0302-2013150',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(502,1,'502','Muhammad Rashid','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0336-2526655',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(503,1,'503','Muhammad Shoail','',NULL,'4232',NULL,'Riasat Ali',NULL,NULL,NULL,'0332-2830717',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(504,1,'504','Faisal Akbar','',NULL,'4232',NULL,'Akber Ali',NULL,NULL,NULL,'0301-3378859',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(505,1,'505','Muhammad Asfar','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0346-3519042',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(506,1,'506','Rizwan ','',NULL,'4232',NULL,'Farman Ali',NULL,NULL,NULL,'0314-2091190',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(507,1,'507','Muhammad Faheem','',NULL,'4232',NULL,'Muhammad Inayat',NULL,NULL,NULL,'0321-9284953',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(508,1,'508','Abdul Ghaffar ','',NULL,'4232',NULL,'Inayat Ali',NULL,NULL,NULL,'0344-8324785',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(509,1,'509','Muhammad Shafiq','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0300-2301624',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(510,1,'510','Mrs. Ayoub Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(511,1,'511','Zulfiquar Ali','',NULL,'4232',NULL,'Sawat Ali',NULL,NULL,NULL,'0332-8369090',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(512,1,'512','Aijaz Ali','',NULL,'4232',NULL,'Karam Sher Khan',NULL,NULL,NULL,'0308-2094515',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(513,1,'513','Shahid Kareem','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0306-7874760',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(514,1,'514','Faisal Khan','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0334-2804655',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(515,1,'515','Sardar Ahmed','',NULL,'4232',NULL,'Abdullah Khan',NULL,NULL,NULL,'0333-3183876',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(516,1,'516','Khan Muhammad ','',NULL,'4232',NULL,'Abdullah Khan',NULL,NULL,NULL,'0345-2456349',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(517,1,'517','Abdul Qayoom ','',NULL,'4232',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2102159',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(518,1,'518','Shafiq Ahmed','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0347-3081458',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(519,1,'519','Mrs. Toufeeq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0349-3719859',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(520,1,'520','Muhammad Iqbal','',NULL,'4232',NULL,'Abdul Kareem',NULL,NULL,NULL,'0336-2298810',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(521,1,'521','Shoukat Ali','',NULL,'4232',NULL,'Abdullah Khan',NULL,NULL,NULL,'0300-2307314',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(522,1,'522','Muhammad Tufail','',NULL,'4232',NULL,'Abdul Rehman',NULL,NULL,NULL,'0345-1441828',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(523,1,'523','Muhammad Khalid','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2981810',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(524,1,'524','Sarfaraz Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0321-3262593',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(525,1,'525','Muhammad Zafar','',NULL,'4232',NULL,'Abdul Wahab Khan',NULL,NULL,NULL,'0333-2119675',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(526,1,'526','Imran Ali Khan','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0348-1292964',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(527,1,'527','Wakeel Ahmed','',NULL,'4232',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0335-3318189',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(528,1,'528','Kamran Ali','',NULL,'4232',NULL,'Muhammad Haneed',NULL,NULL,NULL,'0335-2496430',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(529,1,'529','Mubarak Husain','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0308-2771775',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(530,1,'530','Muhammad Iqbal','',NULL,'4232',NULL,'Imam Ali',NULL,NULL,NULL,'0348-2441080',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(531,1,'531','Muhammad Aslam','',NULL,'4232',NULL,'Bashir Khan',NULL,NULL,NULL,'021-32578786',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(532,1,'532','Nazar Ali','',NULL,'4232',NULL,'Amin Khan',NULL,NULL,NULL,'0300-3005281',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(533,1,'533','Mansoor Ali','',NULL,'4232',NULL,'Yousuf Ali',NULL,NULL,NULL,'0347-2803783',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(534,1,'534','Shahzad Ali','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0305-3636829',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(535,1,'535','Shahzad Ali','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0300-2441511',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(536,1,'536','Abdul Jabbar Khan','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0345-2168041',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(537,1,'537','Prof. Rafiq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-4364311',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(538,1,'538','Sub.Inspector Iqbal Ali','',NULL,'4232',NULL,'Hayat Muhammad Khan',NULL,NULL,NULL,'0321-2754133',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(539,1,'539','Muhammad Shoail','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0321-2692615',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(540,1,'540','Naveed Ahmed','',NULL,'4232',NULL,'Bakhs Ullah Khan',NULL,NULL,NULL,'0333-3976131',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(541,1,'541','Irshad Ahmed','',NULL,'4232',NULL,'Abdul Razaq',NULL,NULL,NULL,'0334-2067865',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(542,1,'542','Riaz Ahmed','',NULL,'4232',NULL,'Umeed ali',NULL,NULL,NULL,'0300-9294269',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(543,1,'543','Shoukat Ali','',NULL,'4232',NULL,'Niaz Muhammad ',NULL,NULL,NULL,'0321-2310540',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(544,1,'544','Sarjeel Ahmed','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0304-2663299',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(545,1,'545','Mohsin Raza','',NULL,'4232',NULL,'Munwar Ali',NULL,NULL,NULL,'0300-3323015',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(546,1,'546','Sarwar Ali','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0322-3344215',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(547,1,'547','Ashfaque Ahmed ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0336-2341843',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(548,1,'548','Muhammad Aslam','',NULL,'4232',NULL,'Muhammad Hashim',NULL,NULL,NULL,'0333-2172504',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(549,1,'549','Muhammad Aslam','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-2172503',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(550,1,'550','Ateeq Ahmed','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0322-2966749',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(551,1,'551','Talha Nabi','',NULL,'4232',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0333-8362583',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(552,1,'552','Abrar Ahmed','',NULL,'4232',NULL,'Muhammad Sadiq',NULL,NULL,NULL,'0310-2884978',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(553,1,'553','Muhammad Iqbal','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0321-8245122',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(554,1,'554','Muhammad Aslam','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(555,1,'555','Muhammad Tariq','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-9211491',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(556,1,'556','Arsalan Ayoub','',NULL,'4232',NULL,'Muhammad Ayoub',NULL,NULL,NULL,'0333-3169587',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(557,1,'557','Riaz Ahmed','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0345-2076604',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(558,1,'558','Sadiq Ali','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3723544',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(559,1,'559','Muhammad Altaf','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-2506398',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(560,1,'560','Muhammad Ishaque','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3686466',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(561,1,'561','Muhammad Aslam','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0335-3452707',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(562,1,'562','Muhammad Ilyas','',NULL,'4232',NULL,'Muhammad Qasim',NULL,NULL,NULL,'0322-3507820',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(563,1,'563','Muhammad Javed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-9275036',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(564,1,'564','Muhammad Khurram ','',NULL,'4232',NULL,'Nadir Ali',NULL,NULL,NULL,'0333-2990776',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(565,1,'565','Nisar Ahmed ','',NULL,'4232',NULL,'Abdul Ghaffar Khan',NULL,NULL,NULL,'0334-3014942',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(566,1,'566','Toufeeq Husain','',NULL,'4232',NULL,'Muhammad Saddiq',NULL,NULL,NULL,'0300-2854668',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(567,1,'567','Shamroz Ali','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0303-2915090',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(568,1,'568','Zulfiquar Ahmed','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0311-3139710',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(569,1,'569','Muhammad Naeem','',NULL,'4232',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0346-2637438',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(570,1,'570','Engr. Arif','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0301-8273953',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(571,1,'571','Kamran Shabbir','',NULL,'4232',NULL,'Shabbir Ahmed',NULL,NULL,NULL,'0300-3323623',NULL,NULL,'Pak Colony',NULL,'Pak Colony','Sindh','Karachi',NULL,NULL,NULL),
(572,1,'572','Irfan Ali','',NULL,'4232',NULL,'Usman Ali',NULL,NULL,NULL,'0321-2275137',NULL,NULL,'Purana Golimar',NULL,'Purana Golimar','Sindh','Karachi',NULL,NULL,NULL),
(573,1,'573','Muhammad Tanver','',NULL,'4232',NULL,'Himayat Ali Khan',NULL,NULL,NULL,'0311-2389049',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(574,1,'574','Muhammad Hameed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(575,1,'575','Muhammad Khalid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(576,1,'576','Muhammad Tahir','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0316-2203321',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(577,1,'577','Muhammad Sabir','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(578,1,'578','Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(579,1,'579','Muhammad Shahid','',NULL,'4232',NULL,'Liaquat Ali Khan',NULL,NULL,NULL,'0310-2033081',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(580,1,'580','Haider Ali','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0300-2099468',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(581,1,'581','Sadiq Ali','',NULL,'4232',NULL,'Raheem Khan',NULL,NULL,NULL,'0300-2653455',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(582,1,'582','Adnan Haider','',NULL,'4232',NULL,'Haider Ali',NULL,NULL,NULL,'0317-0808011',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(583,1,'583','Manan Haider','',NULL,'4232',NULL,'Haider Ali',NULL,NULL,NULL,'0300-2099468',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(584,1,'584','Mehboob Ali','',NULL,'4232',NULL,'Liaquat Ali ',NULL,NULL,NULL,'0300-2528081',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(585,1,'585','Muhammad Ameen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0315-8475182',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(586,1,'586','Jamshed Ali','',NULL,'4232',NULL,'Hameed Khan',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(587,1,'587','Rasheed Ali','',NULL,'4232',NULL,'Hameed Khan',NULL,NULL,NULL,'',NULL,NULL,'Korangi 2.5 #',NULL,'Korangi','Sindh','Karachi',NULL,NULL,NULL),
(588,1,'588','Mumtaz Ahmed Khan','',NULL,'4232',NULL,'Phool Muhammad Khan',NULL,NULL,NULL,'0333-3166677',NULL,NULL,'R 109 Block D Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(589,1,'589','Sajjid Mumtaz','',NULL,'4232',NULL,'Mumtaz Ahmed Khan',NULL,NULL,NULL,'0314-2239751',NULL,NULL,'R 109 Block D Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(590,1,'590','Advocate Asif Mumtaz','',NULL,'4232',NULL,'Mumtaz Ahmed Khan',NULL,NULL,NULL,'0333-2633366',NULL,NULL,'R 109 Block D Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(591,1,'591','Muhammad Usman','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0335-2373288',NULL,NULL,'R 43 Block F Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(592,1,'592','Engr. Muhammad Bilal','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0345-2285122',NULL,NULL,'R 43 Block F Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(593,1,'593','Engr. Sharjeel ','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0334-3231018',NULL,NULL,'R 43 Block F Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(594,1,'594','Engr. Faisal Saeed','',NULL,'4232',NULL,'Muhammad Saeed',NULL,NULL,NULL,'0332-2723084',NULL,NULL,'Gulshan-e-Jamal',NULL,'Ghulshan-e-Jamal ','Sindh','Karachi',NULL,NULL,NULL),
(595,1,'595','Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0344-8282777',NULL,NULL,'Malir Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(596,1,'596','Muhammad Aslam Khan','',NULL,'4232',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0321-3039969',NULL,NULL,'8/3 Soorti Society Model Colony Malir Check Post#2',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(597,1,'597','Muhammad Akram Khan','',NULL,'4232',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0321-2671863',NULL,NULL,'7C Al-Jamiat Garden ',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(598,1,'598','Muhammad Khalid Khan','',NULL,'4232',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0333-2503691',NULL,NULL,'Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(599,1,'599','Muhammad Arif Khan','',NULL,'4232',NULL,'Muhammad Idress Khan',NULL,NULL,NULL,'0333-2093056',NULL,NULL,'Soorti Society Model Colony Malir Check Post#2',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(600,1,'600','Muhammad Tahir Javeed Khan','',NULL,'4232',NULL,'Captain Mehboob Ali',NULL,NULL,NULL,'0301-2034804',NULL,NULL,'Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(601,1,'601','Muhammad Taswer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-0842338',NULL,NULL,'Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(602,1,'602','Nasir Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3780868',NULL,NULL,'28/2/3 Street #24 Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(603,1,'603','Imran Ali','',NULL,'4232',NULL,'Nasir Ali Khan',NULL,NULL,NULL,'0333-3780868',NULL,NULL,'28/2/3 Street #24 Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(604,1,'604','Major Shoukat Ali','',NULL,'4232',NULL,'Khursheed Ali Khan',NULL,NULL,NULL,'0304-2759242',NULL,NULL,'Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(605,1,'605','Brig. Abdul Waheed','',NULL,'4232',NULL,'Natho Khan Abdul Hafeez',NULL,NULL,NULL,'',NULL,NULL,'Model Colony',NULL,'Malir & Model Colony','Sindh','Karachi',NULL,NULL,NULL),
(606,1,'606','Javed Niaz','',NULL,'4232',NULL,'Niaz Ahmed',NULL,NULL,NULL,'0321-5515527',NULL,NULL,'57/0 PECHS Near Ambala Bakery ',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(607,1,'607','Abid Ali Khan (Silk Bank)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3320110',NULL,NULL,'E Market PECHS Near Ambala Bakery',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(608,1,'608','Zulfiquar ','',NULL,'4232',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0300-8218845',NULL,NULL,'Muslimabad Cooperative Housing Society (Islamia Co',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(609,1,'609','Mohsin Zulfiquar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0322-8228877',NULL,NULL,'Muslimabad Cooperative Housing Society (Islamia Co',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(610,1,'610','Ameer Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3084217',NULL,NULL,'52/Q PECHS Block 2',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(611,1,'611','Ameer Hassan','',NULL,'4232',NULL,'Muhammad Ilyas Khan',NULL,NULL,NULL,'0333-3084217',NULL,NULL,'House# 52-Q Block#2 P.E.C.H.S karachi ',NULL,'P.E.C.H.S','Sindh','Karachi',NULL,NULL,NULL),
(612,1,'612','Engr. Afaq Ahmed','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'',NULL,NULL,'Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(613,1,'613','Muhammad Shahid Khan','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'030-2225049',NULL,NULL,'Flat # A1 Royal Heights Block B13 ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(614,1,'614','Saifullah Khan','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0333-3669484',NULL,NULL,'Flat # A1 Royal Heights Block B13 ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(615,1,'615','Engr. Muhammad Naveed','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0300-3480608',NULL,NULL,'Flat # A13 Sherein Apartments ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(616,1,'616','Dr. Ghulam Mustafa','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Flat # A10 Sherein Apartments ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(617,1,'617','Engr. Abid Mehmood','',NULL,'4232',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0332-8065358',NULL,NULL,'Flat # AX 34 Ghulshan Ayesha Moti Mehal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(618,1,'618','Azhar Ali Khan','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0333-2942667',NULL,NULL,'Flat # AY 36 Ghulshan Ayesha Moti Mehal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(619,1,'619','Muhammad Asif Khan','',NULL,'4232',NULL,'Muhammad Qasim Khan',NULL,NULL,NULL,'0332-3693941',NULL,NULL,'Flat# 604 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(620,1,'620','Engr. Muhammad Fasih','',NULL,'4232',NULL,'Muhammad Asif Khan',NULL,NULL,NULL,'0334-9299940',NULL,NULL,'Flat# 604 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(621,1,'621','Waleed Ahmed ','',NULL,'4232',NULL,'Muhammad Toufeeq Khan',NULL,NULL,NULL,'0306-3736036',NULL,NULL,'Flat# 706 Crown Heights Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(622,1,'622','Shahid Ali Khan','',NULL,'4232',NULL,'Ishaque Khan',NULL,NULL,NULL,'0321-2252597',NULL,NULL,'Flat 202 Al-Amin Tower Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(623,1,'623','Muhammad Shoaib','',NULL,'4232',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0300-3249545',NULL,NULL,'A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(624,1,'624','Muhammad Humayoon','',NULL,'4232',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0331-3135993',NULL,NULL,'A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(625,1,'625','Zuhaib Khan','',NULL,'4232',NULL,'Willayat Ali Khan',NULL,NULL,NULL,'0300-3249545',NULL,NULL,'A 584 Ghulshan-e-Iqbal Block 3 KDA Market',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(626,1,'626','Muhammad Ilyas','',NULL,'4232',NULL,'Jan Muhammad Khan',NULL,NULL,NULL,'0300-2427492',NULL,NULL,'R 619 Block B 19 Anwer Society FB Area',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(627,1,'627','Ahmer Ilyas','',NULL,'4232',NULL,'Muhammad Ilyas',NULL,NULL,NULL,'0331-3601184',NULL,NULL,'R 619 Block B 19 Anwer Society FB Area',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(628,1,'628','Dr. Ahmed Nawab ','',NULL,'4232',NULL,'Mushtaq Ahmed Khan',NULL,NULL,NULL,'0333-2399576',NULL,NULL,'Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(629,1,'629','Dr. Shah Nawaz','',NULL,'4232',NULL,'Mushtaq Ahmed Khan',NULL,NULL,NULL,'',NULL,NULL,'Ghulshan-e-Iqbal Block 6 Nipa Chowrangi',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(630,1,'630','Muhammad Arshad','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0313-2169845',NULL,NULL,'Flat# A-302 Shoni View Apartments Ghulsan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(631,1,'631','Sohail Sattar','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0345-2325582',NULL,NULL,'Bleez Garden Abu-Al-Asfani Road Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(632,1,'632','Muhammad Adnan','',NULL,'4232',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0336-0350238',NULL,NULL,'Malik Society Scheme 33 Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(633,1,'633','Muhammad Umair','',NULL,'4232',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0335-8468662',NULL,NULL,'Malik Society Scheme 33 Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(634,1,'634','Javed Husain','',NULL,'4232',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0300-8249701',NULL,NULL,'D-14, Block 17, Gulshan-eIqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(635,1,'635','SHO Aijaz','',NULL,'4232',NULL,'Muhammad Yaqoob Khan',NULL,NULL,NULL,'0300-2433450',NULL,NULL,'Farida Square Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(636,1,'636','Zaheer Ahmed Khan','',NULL,'4232',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2138260',NULL,NULL,'Farida Square Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(637,1,'637','Akber Ali Khan','',NULL,'4232',NULL,'Alahuddin Khan',NULL,NULL,NULL,'021-34967896',NULL,NULL,'Farida Square Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(638,1,'638','Qamar Ali Khan','',NULL,'4232',NULL,'Akber Ali Khan',NULL,NULL,NULL,'0301-8278353',NULL,NULL,'Farida Square Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(639,1,'639','Shakeel Ahmed','',NULL,'4232',NULL,'Ahmed Ali Khan',NULL,NULL,NULL,'0333-2247806',NULL,NULL,'Farida Square Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(640,1,'640','Muhammad Aslam Khan','',NULL,'4232',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0333-2138260',NULL,NULL,'D-71, Block 7, Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(641,1,'641','Mehmood Ali Khan','',NULL,'4232',NULL,'Bhawaley Khan',NULL,NULL,NULL,'0333-3092811',NULL,NULL,'D-20, Block 7, Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(642,1,'642','Amir Mehmood','',NULL,'4232',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'021-34965920',NULL,NULL,'D-20, Block 7, Gulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(643,1,'643','Engr. Faraz Akhter ','',NULL,'4232',NULL,'Muhammad Akhter',NULL,NULL,NULL,'0333-1272926',NULL,NULL,'L-1722 Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(644,1,'644','Muhammad Tahir','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-2825373',NULL,NULL,'L-1722 Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(645,1,'645','Noor Ahmed','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-7372720',NULL,NULL,'L 22/80 Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(646,1,'646','Naveed Ahmed','',NULL,'4232',NULL,'Noor Ahmed Khan',NULL,NULL,NULL,'0334-7372720',NULL,NULL,'L 22/80 Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(647,1,'647','Mehmood Gaznavi','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0343-2441990',NULL,NULL,'L-1736 Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(648,1,'648','Muhammad Waseem','',NULL,'4232',NULL,'Abdul Haq ',NULL,NULL,NULL,'0333-3078090',NULL,NULL,'14/A Gulshan-e-Iqbal Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(649,1,'649','Shahid Ali','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0300-2229416',NULL,NULL,'L 106 Model Village Ghulshan-e-Iqbal BLK 11',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(650,1,'650','Engr. Hamid Ali','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0300-2405334',NULL,NULL,'L 106 Model Village Ghulshan-e-Iqbal BLK 11',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(651,1,'651','Muhammad Adnan','',NULL,'4232',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0333-1231680',NULL,NULL,'Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(652,1,'652','Muhammad Irfan','',NULL,'4232',NULL,'Muhammad Abbas Khan',NULL,NULL,NULL,'0334-3618079',NULL,NULL,'Scheme 33',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(653,1,'653','Muhammad Kashif','',NULL,'4232',NULL,'Engr. Abdul Sattar Khan',NULL,NULL,NULL,'0333-3202991',NULL,NULL,'Gulzar-e-Hijri Scheme 33 Ghulshan',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(654,1,'654','Liaquat Ali','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0332-2288316',NULL,NULL,'Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(655,1,'655','Muhammad Safdar Ali','',NULL,'4232',NULL,'Risaldar Abdul Majeed Khan',NULL,NULL,NULL,'0333-7087714',NULL,NULL,'Metrowill III Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(656,1,'656','Khuzeema Ali Sher','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0315-3690490',NULL,NULL,'Metrowill III Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(657,1,'657','Muhammad Sajid','',NULL,'4232',NULL,'Risaldar Abdul Majeed Khan',NULL,NULL,NULL,'0333-7087714',NULL,NULL,'Metrowill III Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(658,1,'658','Muhammad Maqsood Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3488638',NULL,NULL,'H# 397 Ghulshan-e-Iqbal Block 4',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(659,1,'659','Matloob Ahmed','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0333-3849906',NULL,NULL,'Ghulshan-e-Iqbal Yasir Arcade Squad Colony',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(660,1,'660','Abdul Qayoom Khan','',NULL,'4232',NULL,'Muhammad Yaqoob Khan',NULL,NULL,NULL,'0345-3746837',NULL,NULL,'Noman Complex Ghulshan-e-Iqbal 13 D KK Electric St',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(661,1,'661','Engr. Ali Ahmed','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0333-3990626',NULL,NULL,'Civic View Hasan Square Ghulshan 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(662,1,'662','Abid Naseem','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0342-2561813',NULL,NULL,'Civic View Hasan Square Ghulshan 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(663,1,'663','Ali Usman','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'0333-2113455',NULL,NULL,'Civic View Hasan Square Ghulshan 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(664,1,'664','Engr. Shakeel Ahmed','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0307-2561230',NULL,NULL,'Panama Center Ghulshan-e-Iqbal 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(665,1,'665','Muhammad Nasir','',NULL,'4232',NULL,'Risaldar Amin Khan',NULL,NULL,NULL,'0333-3510101',NULL,NULL,'Waseem Bagh Ghulshan-e-Iqbal 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(666,1,'666','Engr. Auranzaib','',NULL,'4232',NULL,'Nasir Ali Khan',NULL,NULL,NULL,'0333-3471154',NULL,NULL,'Waseem Bagh Ghulshan-e-Iqbal 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(667,1,'667','Waqar Aslam','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0312-2763785',NULL,NULL,'Hina Teris Ghulshan-e-Iqbal 13 D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(668,1,'668','Niaz Ahmed','',NULL,'4232',NULL,'Muqarab Ali Khan',NULL,NULL,NULL,'0335-1291665',NULL,NULL,'Flat # 233 Munela Center 13-D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(669,1,'669','Saeed Ahmed','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-2247361',NULL,NULL,'Flat # 231 Munela Center 13-D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(670,1,'670','Liaquat Ali Khan','',NULL,'4232',NULL,'Mazhar Ali Khan',NULL,NULL,NULL,'0323-8212390',NULL,NULL,'Flat D.30 Rofi Apartments 13-D',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(671,1,'671','Sultan Ahmed','',NULL,'4232',NULL,'Abdul Gafoor Khan',NULL,NULL,NULL,'0333-2834070',NULL,NULL,'Noman Terris 5th Floor Nipa Ghulshan-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(672,1,'672','Engr. Imran Qaim Khani','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0331-2070633',NULL,NULL,'Flat# 10 4th Floor Anees Heaven Ghulshan Block 13 ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(673,1,'673','Khalid Nizam','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,'0335-3040768',NULL,NULL,'Flat # A 204 Sumaira Pride Near Karachi University',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(674,1,'674','Saeed Qaim Khani','',NULL,'4232',NULL,'Hasmat Ali Khan',NULL,NULL,NULL,'0300-8271451',NULL,NULL,'H# A 47 Ghulshan-e-Iqbal 13-B Near Younus Masjid',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(675,1,'675','Amjad Qaim Khani','',NULL,'4232',NULL,'Hasmat Ali Khan',NULL,NULL,NULL,'0333-7157046',NULL,NULL,'H# A 47 Ghulshan-e-Iqbal 13-B Near Younus Masjid',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(676,1,'676','Moazzam Ali Khan','',NULL,'4232',NULL,'Murad Ali Khan',NULL,NULL,NULL,'0333-2103580',NULL,NULL,'Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(677,1,'677','Engr. Faraz','',NULL,'4232',NULL,'Moazzam Ali Khan',NULL,NULL,NULL,'0345-6264335',NULL,NULL,'Flat# 26 Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(678,1,'678','Engr. Shahid Akhter','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0344-4486212',NULL,NULL,'Flat# 28 Al-Mubasir Ghulshan-e-Iqbal 13-C ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(679,1,'679','Engr. Imran Khan','',NULL,'4232',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0300-2148483',NULL,NULL,'Flat # B-9 Al-Islam Apartments Ghulshan-e-Iqbal 13',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(680,1,'680','Engr. Adnan Khan','',NULL,'4232',NULL,'Shamshad Ali Khan',NULL,NULL,NULL,'0322-2225445',NULL,NULL,'A 415 Block 5 Ghulsha-e-Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(681,1,'681','Muhammad Aslam ','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0301-2455005',NULL,NULL,'101 Home Land Apartments Ghulshan-e-Iqbal 13-C',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(682,1,'682','Dr. Abdul Razzaq Khan','',NULL,'4232',NULL,'Noor Muhammad Khan',NULL,NULL,NULL,'0305-3121441',NULL,NULL,'Flat# D-417 Mear Apartments Ghulshan-e-Iqbal 13-C',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(683,1,'683','Engr. Wahab Razzaq','',NULL,'4232',NULL,'Dr. Abdul Razzaq Khan',NULL,NULL,NULL,'0331-6887688',NULL,NULL,'Flat# D-417 Mear Apartments Ghulshan-e-Iqbal 13-C ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(684,1,'684','Prof. Mubarak Khan','',NULL,'4232',NULL,'Dr. Abdul Razzaq Khan',NULL,NULL,NULL,'0334-2612349',NULL,NULL,'Flat# D-8 Najma Square Ghulshan-e-Iqbal 13-B',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(685,1,'685','Engr. Nadir Ali Khan','',NULL,'4232',NULL,'Mubarak Ali Khan',NULL,NULL,NULL,'0300-0884028',NULL,NULL,'Flat# D-8 Najma Square Ghulshan-e-Iqbal 13-B',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(686,1,'686','Engr. Waseem','',NULL,'4232',NULL,'Ali Sher Khan',NULL,NULL,NULL,'0302-8289219',NULL,NULL,'Flat# N2 Iram Palace Phase 2 Ghulshan-e-Iqbal 13-B',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(687,1,'687','Javed Iqbal','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0322-2201901',NULL,NULL,'Flat# A-404 Ghulshan Husain Gala ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(688,1,'688','Muhammad Shoaib','',NULL,'4232',NULL,'Javed Iqbal',NULL,NULL,NULL,'4479-50243006',NULL,NULL,'Flat# A-404 Ghulshan Husain Gala ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(689,1,'689','Zahid Iqbal','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-1307870',NULL,NULL,'Flat # 304 3rd floor Galaxy apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(690,1,'690','Engr. Haider Ghani','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'',NULL,NULL,'Flat # 304 3rd floor Galaxy apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(691,1,'691','Engr. Faraz','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'',NULL,NULL,'Flat # 403 4th floor Galaxy apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(692,1,'692','Irfan Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3223090',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(693,1,'693','Moiz Ali','',NULL,'4232',NULL,'Sulaiman Ali',NULL,NULL,NULL,'0332-2923084',NULL,NULL,'Nipa Chowrangi',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(694,1,'694','Muhammad Arsalan','',NULL,'4232',NULL,'Muhammad Khalid',NULL,NULL,NULL,'0300-2721500',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(695,1,'695','Muhammad Bilal','',NULL,'4232',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0334-2558499',NULL,NULL,'Iram Apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(696,1,'696','Muhammad Taimoor','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0334-2813614',NULL,NULL,'Iram Apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(697,1,'697','Muhammad Haseeb','',NULL,'4232',NULL,'Nisar Ahmed',NULL,NULL,NULL,'0334-2813614',NULL,NULL,'Iram Apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(698,1,'698','Engr. Sheroz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3856121',NULL,NULL,'Iram Apartments',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(699,1,'699','Muhammad Junaid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(700,1,'700','Sufyan Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-1305090',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(701,1,'701','Wali Raza Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7766090',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(702,1,'702','Wali Muhammad ','',NULL,'4232',NULL,'Abdul Jabbar Khan',NULL,NULL,NULL,'0331-9290333',NULL,NULL,'Akber Paradies',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(703,1,'703','Muhammad Ali','',NULL,'4232',NULL,'Maqsood Ali Khan',NULL,NULL,NULL,'0300-7067852',NULL,NULL,'Block/10 maymaar Driver Gulshan e Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(704,1,'704','Muhammad Khalid','',NULL,'4232',NULL,'Alam Ali Khan',NULL,NULL,NULL,'0300-9247222',NULL,NULL,'B-175 Gulshan e  Iqbal Block/5',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(705,1,'705','Sami Ullah','',NULL,'4232',NULL,'Hassan  Khan',NULL,NULL,NULL,'0333-3122136',NULL,NULL,'House# B-16 P.R.E.C.H.S Project 5-A Gulshan e Iqba',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(706,1,'706','Mohib Ullah','',NULL,'4232',NULL,'Muhammad Hassan',NULL,NULL,NULL,'0332-2678417',NULL,NULL,'Abu Isfahani Gulshan e Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(707,1,'707','Wali Ullah','',NULL,'4232',NULL,'Muhammad Hassan Khan',NULL,NULL,NULL,'',NULL,NULL,'Abu Isfahani Gulshan e Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(708,1,'708','Imran ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0302-8248484',NULL,NULL,'A-15 Raw 1, Block# B National Cement Housing Socie',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(709,1,'709','Abdullah Khan','',NULL,'4232',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0345-2128812',NULL,NULL,'A-249 National Cement Housing Society, Gulshan e I',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(710,1,'710','Muhammad Aslam Qaim Khani','',NULL,'4232',NULL,'Peero Khan',NULL,NULL,NULL,'0334-9202121',NULL,NULL,'Flate# A-20 Suleman Plaza Rashid Minhas Road Gulsh',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(711,1,'711','Javed Munawwar','',NULL,'4232',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0332-2177066',NULL,NULL,'Flate# C-18 4 Floor Junaid Plaza Gulshan e Iqbal',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(712,1,'712','Muhammad Saleem','',NULL,'4232',NULL,'Muhammad Khan',NULL,NULL,NULL,'0334-2435523',NULL,NULL,'House# C-150 Block-C, North Nazimabad ',NULL,'Ghulshan-e-Iqbal','Sindh','Karachi',NULL,NULL,NULL),
(713,1,'713','Hasmat Husain Khan','',NULL,'4232',NULL,'Liaquat Husain Khan',NULL,NULL,NULL,'0300-2324742',NULL,NULL,'H#1 H I Falcon Complex Malir Cant ',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(714,1,'714','Dr. Zakir Husain Khan','',NULL,'4232',NULL,'Hasmat Husain Khan',NULL,NULL,NULL,'021-3449123',NULL,NULL,'H#1 H I Falcon Complex Malir Cant ',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(715,1,'715','Asif Husain Khan','',NULL,'4232',NULL,'Hasmat Husain Khan',NULL,NULL,NULL,'0300-2212221',NULL,NULL,'H#1 H I Falcon Complex Malir Cant ',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(716,1,'716','Mudasir Husain Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-2555833',NULL,NULL,'H#1 H I Falcon Complex Malir Cant ',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(717,1,'717','Wng. Cdr. Willayat Ali Khan','',NULL,'4232',NULL,'Major Mehbob Ali Khan',NULL,NULL,NULL,'0300-8208584',NULL,NULL,'99 SD Phase 2 DOHS Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(718,1,'718','Dr. Lt.Col. Muhammad Fahim Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2232896',NULL,NULL,'Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(719,1,'719','Brig. Muhammad Rafiq Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-9643166',NULL,NULL,'444 SUH Brig. House Askari 5 Mali Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(720,1,'720','Dr. Shakeel Ahmed','',NULL,'4232',NULL,'Jamil Ahmed',NULL,NULL,NULL,'',NULL,NULL,'SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(721,1,'721','Shakeel Ahmed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2594020',NULL,NULL,'SUH 708 Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(722,1,'722','Nabeel Ahmed','',NULL,'4232',NULL,'Shakeel Ahmed Khan',NULL,NULL,NULL,'',NULL,NULL,'SUH 708 Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(723,1,'723','Abid Ali Khan','',NULL,'4232',NULL,'Mehboob Ali Khan (PIA)',NULL,NULL,NULL,'0333-3421003',NULL,NULL,'SUH 708 Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(724,1,'724','Aftab Ahmed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3008979',NULL,NULL,'SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(725,1,'725','Col. Amjad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0322-2002054',NULL,NULL,'SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(726,1,'726','Major Javed Koser Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-2806007',NULL,NULL,'93 B SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(727,1,'727','Col. Javed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-8267591',NULL,NULL,'62 C SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(728,1,'728','Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8267591',NULL,NULL,'44 B SUH Askari 5 Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(729,1,'729','Haji Jamaludin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-3313384',NULL,NULL,'SD 322 Falcon Complex Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(730,1,'730','Col. Abdul Hamid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2110306',NULL,NULL,'140  Street 8 Phase 1 DOHS Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(731,1,'731','Late Sarwer Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'021-34490691',NULL,NULL,'140  Street 8 Phase 1 DOHS Malir Cant',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(732,1,'732','Muhammad Akhter ','',NULL,'4232',NULL,'Muhamnmad Yasin Khan',NULL,NULL,NULL,'0321-3576689',NULL,NULL,'D 1/2 , GM Bunglows T&T Colony, Opp JPMC Rafique S',NULL,'Malir Cant','Sindh','Karachi',NULL,NULL,NULL),
(733,1,'733','Waseem Khifayat','',NULL,'4232',NULL,'Khifayat Ali',NULL,NULL,NULL,'0333-2238942',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(734,1,'734','Naeem Khifayat','',NULL,'4232',NULL,'Khifayat Ali',NULL,NULL,NULL,'0300-2681356',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(735,1,'735','Naveed Khifayat','',NULL,'4232',NULL,'Khifayat Ali',NULL,NULL,NULL,'0333-1227900',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(736,1,'736','Javed Usman','',NULL,'4232',NULL,'Usman Ghani',NULL,NULL,NULL,'0334-7348687',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(737,1,'737','Sadaqat Ali','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,'0333-2438302',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(738,1,'738','Muhammad Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2885046',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(739,1,'739','Muhammad Ayoub','',NULL,'4232',NULL,'Abdul Ghaffar Khan',NULL,NULL,NULL,'0310-9991528',NULL,NULL,'PNT Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(740,1,'740','Auranzeb Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2299808',NULL,NULL,'Dehli Colony',NULL,'Punjab Chowrangi','Sindh','Karachi',NULL,NULL,NULL),
(741,1,'741','Muhammad Imran','',NULL,'4232',NULL,'Muhammad Idress',NULL,NULL,NULL,'0332-3152604',NULL,NULL,'Jutt Line Saddar Army Quarters',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(742,1,'742','Muhammad Sajjid','',NULL,'4232',NULL,'Muhammad Shahid Khan',NULL,NULL,NULL,'0313-2842418',NULL,NULL,'Jutt Line Saddar Army Quarters',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(743,1,'743','Tanveer Ahmed','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0312-8837726',NULL,NULL,'Jutt Line Saddar Army Quarters',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(744,1,'744','Zahid Akber ','',NULL,'4232',NULL,'Akber Ali Khan',NULL,NULL,NULL,'0300-3916019',NULL,NULL,'Jutt Line Saddar (Ayesha Bawani)',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(745,1,'745','Muhammad Faisal','',NULL,'4232',NULL,'Muhammad Ibrahim Ali Khan',NULL,NULL,NULL,'0300-3551129',NULL,NULL,'Jutt Line Saddar (Ayesha Bawani)',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(746,1,'746','Muhammad Shahzad','',NULL,'4232',NULL,'Muhammad Sadiq',NULL,NULL,NULL,'0300-3551559',NULL,NULL,'Jutt Line Saddar (Ayesha Bawani)',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(747,1,'747','Muhammad Amir','',NULL,'4232',NULL,'Muhammad Shahid Khan',NULL,NULL,NULL,'0313-2842418',NULL,NULL,'Jutt Line Saddar (Ayesha Bawani)',NULL,'JUTT LINE SADDAR ','Sindh','Karachi',NULL,NULL,NULL),
(748,1,'748','Liaquat Ali ','',NULL,'4232',NULL,'Khaley Khan',NULL,NULL,NULL,'0308-2347900',NULL,NULL,'Muslim Colony Near FTC Building',NULL,'Muslim Colony FTC','Sindh','Karachi',NULL,NULL,NULL),
(749,1,'749','Haneef Khan Nasir','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2212388',NULL,NULL,'Bath Island',NULL,'3 TALWAR','Sindh','Karachi',NULL,NULL,NULL),
(750,1,'750','Usman Ghani ','',NULL,'4232',NULL,'Haneef Khan Nasir',NULL,NULL,NULL,'0321-2299877',NULL,NULL,'Bath Island',NULL,'4 TALWAR','Sindh','Karachi',NULL,NULL,NULL),
(751,1,'751','Iftikhar Ahmed ','',NULL,'4232',NULL,'Muhammad Younus Khan',NULL,NULL,NULL,'0321-9248881',NULL,NULL,'Banglow # B-10 Navy Heights Society Clifton',NULL,'CLIFTON','Sindh','Karachi',NULL,NULL,NULL),
(752,1,'752','Muhammad Hasan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0313-2303501',NULL,NULL,'Banglow # D-52 Navy Heights Society Clifton',NULL,'CLIFTON','Sindh','Karachi',NULL,NULL,NULL),
(753,1,'753','Muhammad Asim','',NULL,'4232',NULL,'Ghulam Nabi Advocate',NULL,NULL,NULL,'0300-3335232',NULL,NULL,'Director Medi Link 2 Talwar D-Plaza ',NULL,'CLIFTON','Sindh','Karachi',NULL,NULL,NULL),
(754,1,'754','Muhammad Abid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-9251415',NULL,NULL,'Sea View Plaza',NULL,'CLIFTON','Sindh','Karachi',NULL,NULL,NULL),
(755,1,'755','Javed Akhter','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-8260077',NULL,NULL,'Office#1 17 C Lane 2 Zamzama Defence Phase 5',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(756,1,'756','Brig. Abdul Haq ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3557906',NULL,NULL,'',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(757,1,'757','Hidayat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-2208622',NULL,NULL,'',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(758,1,'758','Brig. Riaz Ahmed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2702000',NULL,NULL,'Banglow # 208 Main Korangi  Road Defence Phase 1',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(759,1,'759','Lt.Col. Shahid Shamsher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3751990',NULL,NULL,'Banglow # 171/2 Main Saba Avenue Defence Phase 6',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(760,1,'760','Muhammad Sajid','',NULL,'4232',NULL,'Shamsher Ali',NULL,NULL,NULL,'0334-3500161',NULL,NULL,'Banglow # 171/2 Main Saba Avenue Defence Phase 6',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(761,1,'761','Major Muhammad Shamshad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-8291097',NULL,NULL,'Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(762,1,'762','Muhammad Umer Khan','',NULL,'4232',NULL,'Shamshad Khan',NULL,NULL,NULL,'0307-2174133',NULL,NULL,'Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(763,1,'763','Muhammad Adnan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-2877667',NULL,NULL,'Banglow # C 22 Shahbaz Commercial Defence Phase 6 ',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(764,1,'764','Muhammad Ilyas Ahsan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2246987',NULL,NULL,'49/2 Lane 22 Defence Phase 7',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(765,1,'765','Shabir Ahmed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0322-9066690',NULL,NULL,'107 Khayaban-e-Itihad Phase 7',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(766,1,'766','Abdul Ghani ','',NULL,'4232',NULL,'Muhi-ud-din Khan',NULL,NULL,NULL,'0345-8200684',NULL,NULL,'Banglow 2/B-B Phase 1',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(767,1,'767','Muhammad Shmashi Ghani','',NULL,'4232',NULL,'Abdul Ghani ',NULL,NULL,NULL,'0321-8208708',NULL,NULL,'Banglow 2/B-B Phase 1',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(768,1,'768','Mrs. Bashir Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2396910',NULL,NULL,'2B-A 4th Lane Defence 1',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(769,1,'769','Shahab Ghani','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-2179779',NULL,NULL,'25 B 26 Street Defence',NULL,'DEFENCE','Sindh','Karachi',NULL,NULL,NULL),
(770,1,'770','Prof. Ishaque Ahmed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3008110',NULL,NULL,'Mehmoodabad TP 2',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(771,1,'771','Engr. Muhammad Raza','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2888082',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(772,1,'772','Muhammad Shahid','',NULL,'4232',NULL,'Abdul Qayoom',NULL,NULL,NULL,'0313-5297090',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(773,1,'773','Muhammad Sajid ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0315-3065479',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(774,1,'774','Muhammad Ishtiaq','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0336-2814487',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(775,1,'775','Ali Akber','',NULL,'4232',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0333-2647857',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(776,1,'776','Muhammad Tariq','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0333-2309020',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(777,1,'777','Owais Shamsher','',NULL,'4232',NULL,'Shamsher Ali',NULL,NULL,NULL,'0333-0230183',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(778,1,'778','Shahnawaz Ahmed','',NULL,'4232',NULL,'Muhammad Ayoub',NULL,NULL,NULL,'0331-3547046',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(779,1,'779','Sheraz Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0303-2082647',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(780,1,'780','Gulzar Ahmed','',NULL,'4232',NULL,'Munawar Ali Khan',NULL,NULL,NULL,'0300-3332009',NULL,NULL,'Mehmoodabad',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(781,1,'781','Muhammad Nadeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0324-9059090',NULL,NULL,'Mehmoodabad TP 2',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(782,1,'782','Muhammad Waseem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-0862040',NULL,NULL,'Mehmoodabad TP 2',NULL,'MEHMOODABAD','Sindh','Karachi',NULL,NULL,NULL),
(783,1,'783','Iftikhar Ahmed','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-2216490',NULL,NULL,'Liaquatabad # 4 KK Furniture',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(784,1,'784','Muhammad Faheem','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0300-2091955',NULL,NULL,'Liaquatabad # 4',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(785,1,'785','Javed Ahmed','',NULL,'4232',NULL,'Naimat Ali Khan',NULL,NULL,NULL,'0314-5604752',NULL,NULL,' Alkaram Square Liaquatabad # 4 (KK Advertisement)',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(786,1,'786','Sabir Ali','',NULL,'4232',NULL,'Hoshiar Ali',NULL,NULL,NULL,'0300-8989006',NULL,NULL,'F.C Area Liaquatabad',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(787,1,'787','Muhammad Asif','',NULL,'4232',NULL,'Hameed Ali Khan',NULL,NULL,NULL,'0303-2242144',NULL,NULL,'F.C Area Liaquatabad',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(788,1,'788','Bashir Ahmed','',NULL,'4232',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0311-2345669',NULL,NULL,'F.C Area Liaquatabad',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(789,1,'789','Muhammad Aslam','',NULL,'4232',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Liaquatabad # 4',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(790,1,'790','Lal Muhammad','',NULL,'4232',NULL,'Deney Khan',NULL,NULL,NULL,'0335-2171164',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(791,1,'791','Muhammad Kamran','',NULL,'4232',NULL,'Lal Muhammad ',NULL,NULL,NULL,'0342-2182657',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(792,1,'792','Muhammad Imran','',NULL,'4232',NULL,'Lal Muhammad ',NULL,NULL,NULL,'0312-5218884',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(793,1,'793','Noman Ahmed','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0331-0374187',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(794,1,'794','Muhammad Faizan','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-2168717',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(795,1,'795','Abdul Aziz Khan','',NULL,'4232',NULL,'Muhammad Shafiq',NULL,NULL,NULL,'0315-8207600',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(796,1,'796','Abdul Rasheed Khan','',NULL,'4232',NULL,'Muhammad Shafiq',NULL,NULL,NULL,'0300-2519643',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(797,1,'797','Raj Muhammad ','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-0214410',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(798,1,'798','Muhammad Ayoub','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0302-3041245',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(799,1,'799','Muhammad Azam','',NULL,'4232',NULL,'Abdul Majeed Khan',NULL,NULL,NULL,'0312-0214410',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(800,1,'800','Muhammad Yamin Khan','',NULL,'4232',NULL,'Sadoley Khan',NULL,NULL,NULL,'0301-2210405',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(801,1,'801','Muhammad Amir','',NULL,'4232',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0340-0067951',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(802,1,'802','Muhammad Kamran','',NULL,'4232',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0315-2188655',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(803,1,'803','Salahudin','',NULL,'4232',NULL,'Nizamuddin Khan',NULL,NULL,NULL,'0307-2024617',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(804,1,'804','Muhammad Imran','',NULL,'4232',NULL,'Nizamuddin Khan',NULL,NULL,NULL,'0310-2117588',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(805,1,'805','Muhammad Aslam','',NULL,'4232',NULL,'Hakim Ali',NULL,NULL,NULL,'0315-0840520',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(806,1,'806','Muhammad Bilal','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0310-2011456',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(807,1,'807','Muhammad Asif','',NULL,'4232',NULL,'Hakim Ali',NULL,NULL,NULL,'0345-4847464',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(808,1,'808','Muhammad Sajid','',NULL,'4232',NULL,'Hakim Ali',NULL,NULL,NULL,'0300-2228427',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(809,1,'809','Muhammad Naeem','',NULL,'4232',NULL,'Muhammad Yamin Khan',NULL,NULL,NULL,'0097-1529090624',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(810,1,'810','Muhammad Nadeem','',NULL,'4232',NULL,'Muhammad Yamin Khan',NULL,NULL,NULL,'0313-8536699',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(811,1,'811','Nawab Ali','',NULL,'4232',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0343-3081671',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(812,1,'812','Niaz Muhammad','',NULL,'4232',NULL,'Taj Muahammad ',NULL,NULL,NULL,'0312-1207896',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(813,1,'813','Muhammad Riaz','',NULL,'4232',NULL,'Taj Muahammad ',NULL,NULL,NULL,'0306-6061613',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(814,1,'814','Muhammad Husain','',NULL,'4232',NULL,'Abdul Ghani',NULL,NULL,NULL,'0304-2660201',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(815,1,'815','Muhammad Javed','',NULL,'4232',NULL,'Abdul Ghani',NULL,NULL,NULL,'0314-4020490',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(816,1,'816','Muhammad Ahsan','',NULL,'4232',NULL,'Javed Khan',NULL,NULL,NULL,'0306-2627521',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(817,1,'817','Muhammad Shahid','',NULL,'4232',NULL,'Muhammad Fayyaz',NULL,NULL,NULL,'',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(818,1,'818','Muhammad Usman','',NULL,'4232',NULL,'Muhammad Aslam Khan',NULL,NULL,NULL,'0312-2616021',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(819,1,'819','Muhammad Habib','',NULL,'4232',NULL,'Murad Khan',NULL,NULL,NULL,'0314-2250084',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(820,1,'820','Sanawer Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(821,1,'821','Ghulam Mustafa','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0307-2024301',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(822,1,'822','Master Farooq','',NULL,'4232',NULL,'Ashique Ali Khan',NULL,NULL,NULL,'0300-2395469',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(823,1,'823','Noor Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0343-2078150',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(824,1,'824','Muhammad Asif','',NULL,'4232',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0343-2078150',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(825,1,'825','Muhammad Yaseen','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3075515',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(826,1,'826','Muhammad Rashid','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3075515',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(827,1,'827','Muhammad Tahir','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3075515',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(828,1,'828','Muhammad Jamshed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0312-0214410',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(829,1,'829','Abdul Rehman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0312-2358702',NULL,NULL,'Liaquatabad Bandhani Colony',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(830,1,'830','Muhammad Akram','',NULL,'4232',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0345-2962849',NULL,NULL,'Liaquatabad # 10 Super Market ',NULL,'LIAQUATABAD','Sindh','Karachi',NULL,NULL,NULL),
(1086,1,'1086','Abdul Ghaffar ','',NULL,'4232',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0334-2817227',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1087,1,'1087','Abdul Ghaffar ','',NULL,'4232',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0300-3310294',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1088,1,'1088','Abdul Ghaffar ','',NULL,'4232',NULL,'Niaz Muhammad',NULL,NULL,NULL,'0345-0200215',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1089,1,'1089','Abdul Jabbar Khan','',NULL,'4232',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0331-2939228',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1090,1,'1090','Abdullah  Majeed','',NULL,'4232',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1091,1,'1091','Anwar Ali','',NULL,'4232',NULL,'Mehboob Ali`Nuhammad Ali Khan',NULL,NULL,NULL,'0340-3240711',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1092,1,'1092','Asghar','',NULL,'4232',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0308-3946046',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1093,1,'1093','Danish ','',NULL,'4232',NULL,'Farooq ',NULL,NULL,NULL,'0307-34186684',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1094,1,'1094','Haji Abdul Jabbar Khan','',NULL,'4232',NULL,'Haji Abdul Kareem Khan',NULL,NULL,NULL,'0337-2939228',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1095,1,'1095','Haji Abdullah Rasheed Khan','',NULL,'4232',NULL,'Haji Muhammad Abdul Kareem',NULL,NULL,NULL,'0333-2939228',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1096,1,'1096','Haji Muhammad Ishtiaq','',NULL,'4232',NULL,'Asad Khan',NULL,NULL,NULL,'0333-4445999',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1097,1,'1097','Haji Muhammad Munawwar','',NULL,'4232',NULL,'Haji Muhammad Yousuf',NULL,NULL,NULL,'0345-3674895',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1098,1,'1098','Hakim Ali','',NULL,'4232',NULL,'Raheem Khan',NULL,NULL,NULL,'0332-3126775',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1099,1,'1099','Ishtiaq ','',NULL,'4232',NULL,'Ahmed Khan',NULL,NULL,NULL,'0306-2450143',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1100,1,'1100','Master Mehboob Ali','',NULL,'4232',NULL,'Abdul Razaq',NULL,NULL,NULL,'0308-3542842',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1101,1,'1101','Mohsin Khan','',NULL,'4232',NULL,'Abdul Kareeb Khan',NULL,NULL,NULL,'0336-2882121',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1102,1,'1102','Muammad Iqbal','',NULL,'4232',NULL,'Moti Khan',NULL,NULL,NULL,'0301-3637439',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1103,1,'1103','Muhammad ','',NULL,'4232',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0308-3946046',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1104,1,'1104','Muhammad  Ameer Ahmed','',NULL,'4232',NULL,'Attar Muhammad',NULL,NULL,NULL,'0302-3311893',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1105,1,'1105','Muhammad Akber','',NULL,'4232',NULL,'Naseer Ahmed Khan',NULL,NULL,NULL,'0301-3331119',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1106,1,'1106','Muhammad Anwar','',NULL,'4232',NULL,'Yousuf   Ali Khan',NULL,NULL,NULL,'0342-3723908',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1107,1,'1107','Muhammad Aslam','',NULL,'4232',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0331-2700004',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1108,1,'1108','Muhammad Ayoub','',NULL,'4232',NULL,'Raheem Khan',NULL,NULL,NULL,'0301-2432265',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1109,1,'1109','Muhammad Basheer ','',NULL,'4232',NULL,'Munnu Khan',NULL,NULL,NULL,'0316-3396403',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1110,1,'1110','Muhammad Hanif','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0336-2827004',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1111,1,'1111','Muhammad Jabbar','',NULL,'4232',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0300-3286500',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1112,1,'1112','Muhammad Shareef','',NULL,'4232',NULL,'Yousuf   Ali Khan',NULL,NULL,NULL,'0331-3104372',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1113,1,'1113','Muhammad Tariq','',NULL,'4232',NULL,'Abdul Aziz',NULL,NULL,NULL,'0334-16820113',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1114,1,'1114','Muhammad Younus ','',NULL,'4232',NULL,'Haji Hashim Ali Khan',NULL,NULL,NULL,'0342-3586552',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1115,1,'1115','Muhammad Younus ','',NULL,'4232',NULL,'Munawwar Ali Khan',NULL,NULL,NULL,'0300-9232433',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1116,1,'1116','Mushtaq Ahmd ','',NULL,'4232',NULL,'Mehmod Ali Khan',NULL,NULL,NULL,'0334-2819594',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1117,1,'1117','Nazeer Ahmed ','',NULL,'4232',NULL,'Hani Khan',NULL,NULL,NULL,'0336-3740628',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1118,1,'1118','Nmuhammad Amir','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0302-3350302',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1119,1,'1119','Omeed Ali Khan','',NULL,'4232',NULL,'Waast Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1120,1,'1120','Owais','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-2765455',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1121,1,'1121','Rehman','',NULL,'4232',NULL,'Niaz Khan',NULL,NULL,NULL,'0306-3579445',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1122,1,'1122','Sana Ullah','',NULL,'4232',NULL,'Shoukat Ali Khan',NULL,NULL,NULL,'0302-3087460',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1123,1,'1123','Sattar (Late)','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0334-2819594',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1124,1,'1124','Sattar Muhammad ','',NULL,'4232',NULL,'Attar Muhammad',NULL,NULL,NULL,'0334-0357715',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1125,1,'1125','Shafiq Ahmed','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0306-3574342',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1126,1,'1126','Wajid Ali ','',NULL,'4232',NULL,'Mehboob Ali ',NULL,NULL,NULL,'',NULL,NULL,'Ward#1',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1127,1,'1127','Arshad','',NULL,'4232',NULL,'Taj Muhammad',NULL,NULL,NULL,'0306-3011841',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1128,1,'1128','Ayoub','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1129,1,'1129','Istiaque','',NULL,'4232',NULL,'Taj Muhammad',NULL,NULL,NULL,'0303-2893148',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1130,1,'1130','Muhammad Akber','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0335-0030055',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1131,1,'1131','Muhammad Aslam','',NULL,'4232',NULL,'Deen Muhammad ',NULL,NULL,NULL,'0334-2953952',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1132,1,'1132','Muhammad Javed','',NULL,'4232',NULL,'Muhammad Ishaque',NULL,NULL,NULL,'0301-3236444',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1133,1,'1133','Nisar','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1134,1,'1134','Saleem ','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1135,1,'1135','Shabeer ','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1136,1,'1136','Shamsher Ali Khan','',NULL,'4232',NULL,'Mushtaq Khan',NULL,NULL,NULL,'0302-3642216',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1137,1,'1137','Usman','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1138,1,'1138','Yaqoob','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0303-3153918',NULL,NULL,'Ward#11',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1139,1,'1139','Abdul Aziz','',NULL,'4232',NULL,'Samad Khan',NULL,NULL,NULL,'0331-204598',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1140,1,'1140','Abdul Aziz ','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0300-8825890',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1141,1,'1141','Abdul Hamed ','',NULL,'4232',NULL,'Bahadur Khan',NULL,NULL,NULL,'0300-3325890',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1142,1,'1142','Abdul Hamid ','',NULL,'4232',NULL,'Muhammad Khan',NULL,NULL,NULL,'0333-2210425',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1143,1,'1143','Abdul Majeed','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-2882820',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1144,1,'1144','Abdul Rauf','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0033-2536235',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1145,1,'1145','Akhtar Ali','',NULL,'4232',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0306-3442941',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1146,1,'1146','Bahadur Ali','',NULL,'4232',NULL,'Aata Muhammad',NULL,NULL,NULL,'0304-2425124',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1147,1,'1147','Basheer Ahmed Khan','',NULL,'4232',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0334-2552036',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1148,1,'1148','Imran Walid ','',NULL,'4232',NULL,'Abdul Waheed',NULL,NULL,NULL,'0300-9379465',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1149,1,'1149','Jahoon Khan','',NULL,'4232',NULL,'Shahadat Khan',NULL,NULL,NULL,'0349-3487606',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1150,1,'1150','Khaya Ul Haq ','',NULL,'4232',NULL,'Iqbal ',NULL,NULL,NULL,'0333-3529630',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1151,1,'1151','Khuda Baksh','',NULL,'4232',NULL,'Bahadur Khan',NULL,NULL,NULL,'0345-0497172',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1152,1,'1152','Manzoor Ali ','',NULL,'4232',NULL,'Muhammad Khan',NULL,NULL,NULL,'0334-7352872',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1153,1,'1153','Muhammad Abdul Hamed','',NULL,'4232',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0332-3484609',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1154,1,'1154','Muhammad Akber Ali','',NULL,'4232',NULL,'Akhtar Ali Khan',NULL,NULL,NULL,'0334-2568888',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1155,1,'1155','Muhammad Akhtar','',NULL,'4232',NULL,'Jeet Khan',NULL,NULL,NULL,'0312-1000941',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1156,1,'1156','Muhammad Akram ','',NULL,'4232',NULL,'Akhtar Ali  Khan',NULL,NULL,NULL,'0306-2050901',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1157,1,'1157','Muhammad Ashraf ','',NULL,'4232',NULL,'Muhammad Taki',NULL,NULL,NULL,'0332-2813841',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1158,1,'1158','Muhammad Asif ','',NULL,'4232',NULL,'Muhammad Taki',NULL,NULL,NULL,'0300-074990',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1159,1,'1159','Muhammad Hanif ','',NULL,'4232',NULL,'Shahadat Khan',NULL,NULL,NULL,'0333-2981811',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1160,1,'1160','Muhammad Ilyas','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'0301-3608584',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1161,1,'1161','Muhammad Imtiaz ','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0345-4030710',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1162,1,'1162','Muhammad Islam','',NULL,'4232',NULL,'Anu Khan',NULL,NULL,NULL,'0334-2568838',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1163,1,'1163','Muhammad Shafiq ','',NULL,'4232',NULL,'Noor Khan',NULL,NULL,NULL,'0306-3350980',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1164,1,'1164','Muhammad Taki','',NULL,'4232',NULL,'Muhammad Shifa',NULL,NULL,NULL,'33292813841',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1165,1,'1165','Muhammad Umer','',NULL,'4232',NULL,'Muhammad Hussain',NULL,NULL,NULL,'0301-3145039',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1166,1,'1166','Mumtaz Ali ','',NULL,'4232',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0301-3900845',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1167,1,'1167','Shamsher Khan','',NULL,'4232',NULL,'Aiman Khan',NULL,NULL,NULL,'0302-1545110',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1168,1,'1168','Shehzad ','',NULL,'4232',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0301-3914309',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1169,1,'1169','Umer Daraz ','',NULL,'4232',NULL,'Ghulam Nabi',NULL,NULL,NULL,'0343-1312087',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1170,1,'1170','Zakir Husaain','',NULL,'4232',NULL,'Abdul Kareem Khan',NULL,NULL,NULL,'0306-3444314',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1171,1,'1171','Zulfiqar Ali ','',NULL,'4232',NULL,'Akhtar Ali',NULL,NULL,NULL,'0334-2814581',NULL,NULL,'Ward#2',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1172,1,'1172',' Muhammad Iqbal','',NULL,'4232',NULL,'Sher Muhammad ',NULL,NULL,NULL,'0331-2947057',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1173,1,'1173','Abdul  Jabbar','',NULL,'4232',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0302-3310708',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1174,1,'1174','Abdul Aziz','',NULL,'4232',NULL,'Muqarib Ali Khan',NULL,NULL,NULL,'0301-3281651',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1175,1,'1175','Abdul Aziz ','',NULL,'4232',NULL,'Raheem Khan',NULL,NULL,NULL,'0331-3125598',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1176,1,'1176','Abdul Gaffar','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-3230156',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1177,1,'1177','Abdul Gaffar ','',NULL,'4232',NULL,'Mehboob Ali',NULL,NULL,NULL,'0307-3435019',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1178,1,'1178','Abdul Hakeem','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-3184774',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1179,1,'1179','Abdul Hakeem','',NULL,'4232',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0304-4072074',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1180,1,'1180','Abdul Hameed','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1181,1,'1181','Abdul Hamid ','',NULL,'4232',NULL,'Haji Mehboob Ali Khan',NULL,NULL,NULL,'0336-3292691',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1182,1,'1182','Abdul Jabbar ','',NULL,'4232',NULL,'Mumtaz Ali Khan',NULL,NULL,NULL,'0302-3310708',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1183,1,'1183','Abdul Lateef ','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0306-2088162',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1184,1,'1184','Abdul Majeed','',NULL,'4232',NULL,'Abdullah Khan',NULL,NULL,NULL,'0333-2533185',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1185,1,'1185','Abdul Majeed','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1186,1,'1186','Abdul Qayoom','',NULL,'4232',NULL,'Abdul Raheem',NULL,NULL,NULL,'0300-3443396',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1187,1,'1187','Abdul Qayoom','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1188,1,'1188','Abdul Qayoom','',NULL,'4232',NULL,'Hussain Khan',NULL,NULL,NULL,'0306-3446132',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1189,1,'1189','Abdul Qayoom Khan','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1190,1,'1190','Abdul Qayoom Khan','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0304-3239200',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1191,1,'1191','Abdul Rasheed','',NULL,'4232',NULL,'Alam Ali Khan',NULL,NULL,NULL,'0333-2991246',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1192,1,'1192','Abdul Sattar ','',NULL,'4232',NULL,'Basheer Khan',NULL,NULL,NULL,'0300-2219177',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1193,1,'1193','Abdul Sattar ','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-3336456',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1194,1,'1194','Abdullah  Majeed','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0333-4445990',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1195,1,'1195','Abdullah Rasheed','',NULL,'4232',NULL,'Abdul Majeed',NULL,NULL,NULL,'0300-3319820',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1196,1,'1196','Abdur Razak','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3885937',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1197,1,'1197','Abid Ali','',NULL,'4232',NULL,'Haji Yameen Khan',NULL,NULL,NULL,'0333-2981638',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1198,1,'1198','Abid Husaain','',NULL,'4232',NULL,'Dawar Ali Khan',NULL,NULL,NULL,'0336-3018019',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1199,1,'1199','Aijaz Khan','',NULL,'4232',NULL,'Mazhar Ali Khan',NULL,NULL,NULL,'0333-2799175',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1200,1,'1200','Akhter Ali','',NULL,'4232',NULL,'Nazer Muhammad',NULL,NULL,NULL,'0300-3311087',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1201,1,'1201','Akram Ul Haq','',NULL,'4232',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0300-3321533',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1202,1,'1202','Amir Hussain','',NULL,'4232',NULL,'Dawar Ali Khan',NULL,NULL,NULL,'0303-3650661',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1203,1,'1203','Anwar Ali','',NULL,'4232',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0344-3494244',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1204,1,'1204','Ashfaq Ahmed ','',NULL,'4232',NULL,'Hakim Ali',NULL,NULL,NULL,'0333-9203444',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1205,1,'1205','Ata Muhammad','',NULL,'4232',NULL,'Haji Raheem baksh',NULL,NULL,NULL,'0302-3311021',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1206,1,'1206','Docter Abdul Aziz','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-9211455',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1207,1,'1207','Farhan Ahmed ','',NULL,'4232',NULL,'Muhmmad Iqbal ',NULL,NULL,NULL,'0332-2804272',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1208,1,'1208','Ghulam Mustafa','',NULL,'4232',NULL,'Hussain Khan',NULL,NULL,NULL,'0300-3288721',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1209,1,'1209','Haji Hakeem Ali','',NULL,'4232',NULL,'Baksh Khan',NULL,NULL,NULL,'0332-0319577',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1210,1,'1210','Haji Hassan','',NULL,'4232',NULL,'Azfar Ali',NULL,NULL,NULL,'0333-2969580',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1211,1,'1211','Haji Mansoor ','',NULL,'4232',NULL,'Hussain Khan',NULL,NULL,NULL,'0306-3094206',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1212,1,'1212','Haji mazir ali khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3323460',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1213,1,'1213','Haji Muahtaq','',NULL,'4232',NULL,'Hussain Khan',NULL,NULL,NULL,'0302-3344220',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1214,1,'1214','Haji Muhammad Hanif ','',NULL,'4232',NULL,'Adeel Khan',NULL,NULL,NULL,'0301-3241616',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1215,1,'1215','Haji Muhammad Younus','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0331-2424355',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1216,1,'1216','Haji Shafique','',NULL,'4232',NULL,'Haji Niaz Khan',NULL,NULL,NULL,'0334-3303222',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1217,1,'1217','Hakim Ali','',NULL,'4232',NULL,'Kareem Khan',NULL,NULL,NULL,'0333-2991247',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1218,1,'1218','Iftakar','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-2799175',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1219,1,'1219','Iftakhar Ahmed ','',NULL,'4232',NULL,'Hakim  Ali khan',NULL,NULL,NULL,'0333-2991243',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1220,1,'1220','Imran Liaqat ','',NULL,'4232',NULL,'Liaqat Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1221,1,'1221','Imtiaz Ali','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0306-3051702',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1222,1,'1222','Intezar Khan','',NULL,'4232',NULL,'Mehboob Ali khan',NULL,NULL,NULL,'0303-0552990',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1223,1,'1223','Intezar Khan','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0300-3324034',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1224,1,'1224','Intezar Khan','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0300-3324034',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1225,1,'1225','Intezar Khan','',NULL,'4232',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0300-3324034',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1226,1,'1226','Jhangir ','',NULL,'4232',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017352',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1227,1,'1227','Jhangir ','',NULL,'4232',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017952',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1228,1,'1228','Jhangir ','',NULL,'4232',NULL,'Imam Udin',NULL,NULL,NULL,'0344-8017952',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1229,1,'1229','Kafayat  Ali','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0305-3663922',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1230,1,'1230','Kaleem Asad ','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-25689911',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1231,1,'1231','Kamran','',NULL,'4232',NULL,'Omeed ',NULL,NULL,NULL,'0334-2553212',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1232,1,'1232','Kamran Khan','',NULL,'4232',NULL,'Omeed ',NULL,NULL,NULL,'0334-2553212',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1233,1,'1233','Kamran Khan','',NULL,'4232',NULL,'Omeed Khan',NULL,NULL,NULL,'0334-2553212',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1234,1,'1234','Liaqat Ali','',NULL,'4232',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0333-3530135',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1235,1,'1235','Liaquat Ali ','',NULL,'4232',NULL,'Lado Khan',NULL,NULL,NULL,'0334-2965868',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1236,1,'1236','Mansoor Ali','',NULL,'4232',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0333-3312216',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1237,1,'1237','Maqsood Ahmed ','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0331-2933790',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1238,1,'1238','Mohsin Ali ','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,'0333-2969506',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1239,1,'1239','Moin Ud din ','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0306-1154045',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1240,1,'1240','Muhamad Haaji ','',NULL,'4232',NULL,'Asad Khan',NULL,NULL,NULL,'0333-2091290',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1241,1,'1241','Muhammad  Yaqoob','',NULL,'4232',NULL,'Manhu Khan',NULL,NULL,NULL,'0331-8432581',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1242,1,'1242','Muhammad Ahmed ','',NULL,'4232',NULL,'Hashim Ali  Khan',NULL,NULL,NULL,'0331-2933790',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1243,1,'1243','Muhammad Akber','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1244,1,'1244','Muhammad Akber','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1245,1,'1245','Muhammad Akber ','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'0333-2833469',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1246,1,'1246','Muhammad akber ','',NULL,'4232',NULL,'Azfar Ali',NULL,NULL,NULL,'0306-3445576',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1247,1,'1247','Muhammad Akber ','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0306-7426675',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1248,1,'1248','Muhammad Akram ','',NULL,'4232',NULL,'Hoshiyar Khan',NULL,NULL,NULL,'0302-2115779',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1249,1,'1249','Muhammad Arif ','',NULL,'4232',NULL,'Muhammad Yaqoob',NULL,NULL,NULL,'0344-2647145',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1250,1,'1250','Muhammad Aslam','',NULL,'4232',NULL,'Babu Muhammad Yousuf',NULL,NULL,NULL,'0300-3105572',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1251,1,'1251','Muhammad Aslam','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0332-3980970',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1252,1,'1252','Muhammad Aslam','',NULL,'4232',NULL,'Raju Khan',NULL,NULL,NULL,'0302-2042953',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1253,1,'1253','Muhammad Aslam','',NULL,'4232',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0301-3626616',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1254,1,'1254','Muhammad Ayob ','',NULL,'4232',NULL,'Hussain',NULL,NULL,NULL,'0306-3556776',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1255,1,'1255','Muhammad Farooq','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0333-2999092',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1256,1,'1256','Muhammad Hussain','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0332-2123870',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1257,1,'1257','Muhammad Iqbal','',NULL,'4232',NULL,'Jiwan Khan',NULL,NULL,NULL,'0333-2981620',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1258,1,'1258','Muhammad Ishtiq ','',NULL,'4232',NULL,'Rehmat Ali Khan',NULL,NULL,NULL,'0336-2884378',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1259,1,'1259','Muhammad Islam','',NULL,'4232',NULL,'Mehnoon Khan',NULL,NULL,NULL,'0332-3980970',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1260,1,'1260','Muhammad Islam','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0332-3980970',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1261,1,'1261','Muhammad Jameel','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0334-4388545',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1262,1,'1262','Muhammad Nadeem','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0301-2576003',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1263,1,'1263','Muhammad Nadeem','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0333-2833991',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1264,1,'1264','Muhammad Rafiqe Ahmed ','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-2817370',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1265,1,'1265','Muhammad Rafique','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-8173370',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1266,1,'1266','Muhammad Rafique Ahmed ','',NULL,'4232',NULL,'Hashim Ali Khan',NULL,NULL,NULL,'0332-2817370',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1267,1,'1267','Muhammad Sajjad ','',NULL,'4232',NULL,'Muhammad Yousuf ',NULL,NULL,NULL,'0331-3711042',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1268,1,'1268','Muhammad Saleem ','',NULL,'4232',NULL,'Haji Shabeer ',NULL,NULL,NULL,'0333-2570635',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1269,1,'1269','Muhammad Saroor ','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0331-3897872',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1270,1,'1270','Muhammad Saror','',NULL,'4232',NULL,'Husaain Khan',NULL,NULL,NULL,'0307-3739328',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1271,1,'1271','Muhammad Shahzad','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0307-3184874',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1272,1,'1272','Muhammad Shamshad ','',NULL,'4232',NULL,'Basheer Khan',NULL,NULL,NULL,'0333-2834347',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1273,1,'1273','Muhammad Shamshad ','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0306-3057290',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1274,1,'1274','Muhammad Sohail','',NULL,'4232',NULL,'Shabbir ',NULL,NULL,NULL,'0336-3349215',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1275,1,'1275','Muhammad Tufail','',NULL,'4232',NULL,'Jafar Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1276,1,'1276','Muhammad Tufail','',NULL,'4232',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1277,1,'1277','Muhammad Tufail ','',NULL,'4232',NULL,'Jafar Ali Khan',NULL,NULL,NULL,'0307-3188552',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1278,1,'1278','Muhammad Waseem ','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0300-3312216',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1279,1,'1279','Muhammad Waseem ','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0335-8169426',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1280,1,'1280','Muhammad Yameen','',NULL,'4232',NULL,'Muhammad Baksh',NULL,NULL,NULL,'0334-2857424',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1281,1,'1281','Muhammad Yaqoob ','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1282,1,'1282','Muhammad Yaqoob ','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1283,1,'1283','Muhammad Yaqoob ','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-3323320',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1284,1,'1284','Muhammad Yaqoob ','',NULL,'4232',NULL,'Mehnoon Khan',NULL,NULL,NULL,'0331-8492581',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1285,1,'1285','Muhammad Yaqoob ','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,'0331-8492581',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1286,1,'1286','Muhammad Younus ','',NULL,'4232',NULL,'Ali Udin Khan',NULL,NULL,NULL,'0332-2072574',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1287,1,'1287','Muhammad Younus ','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0301-2507665',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1288,1,'1288','Muhammad Yousuf ','',NULL,'4232',NULL,'JALAL Ud din',NULL,NULL,NULL,'0336-3101125',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1289,1,'1289','Muhammad Zubair Ahmed ','',NULL,'4232',NULL,'Abdul Majeed ',NULL,NULL,NULL,'0334-2813613',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1290,1,'1290','Mushtaq ','',NULL,'4232',NULL,'Muqarib  Khan',NULL,NULL,NULL,'0336-1234940',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1291,1,'1291','Nadeem Ahmed ','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1292,1,'1292','Nadeem Ahmed ','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1293,1,'1293','Nadeem Ahmed ','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0300-3308480',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1294,1,'1294','Nasir Ali ','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'0334-2893118',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1295,1,'1295','Nasir Ali ','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0334-2839118',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1296,1,'1296','Nasir Ali Khan','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'0331-2893118',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1297,1,'1297','Navaid Ahmed ','',NULL,'4232',NULL,'Haji Niaz Khan',NULL,NULL,NULL,'0333-7099121',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1298,1,'1298','Omeed Ali ','',NULL,'4232',NULL,'Ameen Khan',NULL,NULL,NULL,'0334-2563259',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1299,1,'1299','Omeed Khan','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0334-2552464',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1300,1,'1300','Omeed Khan','',NULL,'4232',NULL,'Asad Khan',NULL,NULL,NULL,'0334-2552464',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1301,1,'1301','Omeed Khan','',NULL,'4232',NULL,'Asad Khan',NULL,NULL,NULL,'0334-2552464',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1302,1,'1302','Sagheer Ahmed ','',NULL,'4232',NULL,'Anayat Ali',NULL,NULL,NULL,'0333-8002867',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1303,1,'1303','Sajid Ali','',NULL,'4232',NULL,'Ali  sher',NULL,NULL,NULL,'0302-2746892',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1304,1,'1304','Sajid Ali','',NULL,'4232',NULL,'Ali Sher ',NULL,NULL,NULL,'0302-2746892',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1305,1,'1305','Sajid Ali','',NULL,'4232',NULL,'Ali Sher ',NULL,NULL,NULL,'0302-2746892',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1306,1,'1306','Shahid Ali','',NULL,'4232',NULL,'Hussain',NULL,NULL,NULL,'0307-8194204',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1307,1,'1307','Sohail','',NULL,'4232',NULL,'Murad Ali ',NULL,NULL,NULL,'0335-9380668',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1308,1,'1308','Taaj Muhammad ','',NULL,'4232',NULL,'Basharat Ali Khan',NULL,NULL,NULL,'0302-2070350',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1309,1,'1309','Umer Daraz ','',NULL,'4232',NULL,'Abdul Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1310,1,'1310','Umer Daraz ','',NULL,'4232',NULL,'Abdul Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1311,1,'1311','Umer Daraz ','',NULL,'4232',NULL,'Muhammad Shakoor',NULL,NULL,NULL,'0300-3323280',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1312,1,'1312','Yousuf','',NULL,'4232',NULL,'Al Ud Din Khan',NULL,NULL,NULL,'0336-3431434',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1313,1,'1313','Zishan','',NULL,'4232',NULL,'Jabbar',NULL,NULL,NULL,'0333-2502774',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1314,1,'1314','Zulfiqar','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1315,1,'1315','Zulfiqar ','',NULL,'4232',NULL,' Nawab  Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1316,1,'1316','Zulfiqar ','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#3',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1317,1,'1317','Abdul Gafar Khan','',NULL,'4232',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0302-3055856',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1318,1,'1318','Abdul Hamid ','',NULL,'4232',NULL,'Basheer Ahmed',NULL,NULL,NULL,'0300-3132323',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1319,1,'1319','Abdul Haq','',NULL,'4232',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0301-2027205',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1320,1,'1320','Abdul Majeed','',NULL,'4232',NULL,'Abdul hamid ',NULL,NULL,NULL,'0331-3704752',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1321,1,'1321','Abdur Raheem Khan','',NULL,'4232',NULL,'Bhoory Khan',NULL,NULL,NULL,'0302-2638949',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1322,1,'1322','Ala Baksh','',NULL,'4232',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0306-2579567',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1323,1,'1323','Ala Rakha','',NULL,'4232',NULL,'Muhammad Ishaq Khan',NULL,NULL,NULL,'0307-3438175',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1324,1,'1324','Ali Akber ','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1325,1,'1325','Basheer Ahmed ','',NULL,'4232',NULL,'Al - Din',NULL,NULL,NULL,'0301-3611258',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1326,1,'1326','Dilshaad Khan','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1327,1,'1327','Docter Abdul jabbar ','',NULL,'4232',NULL,'Yousuf  Ali Khan',NULL,NULL,NULL,'0301-3915844',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1328,1,'1328','Docter Akber  Ali','',NULL,'4232',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0332-2284552',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1329,1,'1329','Docter Muhammad Saleem','',NULL,'4232',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0334-2561283',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1330,1,'1330','Fais Muhammad ','',NULL,'4232',NULL,'Umer Khan',NULL,NULL,NULL,'0305-2622352',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1331,1,'1331','Fajar Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-1361902',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1332,1,'1332','Ghafar ','',NULL,'4232',NULL,'Ata Muhammad ',NULL,NULL,NULL,'0331-3508100',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1333,1,'1333','Ghulaam Muhammad','',NULL,'4232',NULL,'Shahadat Ali ',NULL,NULL,NULL,'0333-7775795',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1334,1,'1334','Ghulaam Nabi','',NULL,'4232',NULL,'Nathu Khan',NULL,NULL,NULL,'0300-2930140',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1335,1,'1335','Ghulaam Nabi','',NULL,'4232',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0308-3598939',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1336,1,'1336','Ghulam Nabi','',NULL,'4232',NULL,'Ismail ',NULL,NULL,NULL,'0333-3316270',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1337,1,'1337','Gulzaar Ahmed ','',NULL,'4232',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0334-2966212',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1338,1,'1338','Hadayat Ali Khan','',NULL,'4232',NULL,'Ismail Khan',NULL,NULL,NULL,'0333-2993655',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1339,1,'1339','Hidayat Ali','',NULL,'4232',NULL,'Hakeem Khan',NULL,NULL,NULL,'0307-3854685  ',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1340,1,'1340','Imran Khan','',NULL,'4232',NULL,'Muhammad jiwan',NULL,NULL,NULL,'0301-3281738',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1341,1,'1341','Imtiaz Ahmed ','',NULL,'4232',NULL,'Haji Mehboob Ali Khan',NULL,NULL,NULL,'0308-2126808',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1342,1,'1342','Irfan ','',NULL,'4232',NULL,'Mubarak Ali',NULL,NULL,NULL,'0335-8162033',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1343,1,'1343','Irshad Ali ','',NULL,'4232',NULL,'Ghulaam Muhammad',NULL,NULL,NULL,'0334-3494441',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1344,1,'1344','Irshad Ali ','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0308-3945806',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1345,1,'1345','Ishtiaq  Ahmed (let)','',NULL,'4232',NULL,'Muhamad Yousuf',NULL,NULL,NULL,'0303-2456519',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1346,1,'1346','Jamshed Ahmed ','',NULL,'4232',NULL,'Abdul Aziz',NULL,NULL,NULL,'0308-3252055',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1347,1,'1347','Jamshed Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-4030912',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1348,1,'1348','Jewan Khan','',NULL,'4232',NULL,'Sher Muhammad ',NULL,NULL,NULL,'0302-2775450',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1349,1,'1349','Khalid Hussain','',NULL,'4232',NULL,'Mumtaaz Ali Khan',NULL,NULL,NULL,'0301-3285322',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1350,1,'1350','Liaqat Ali','',NULL,'4232',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0304-3418044',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1351,1,'1351','Liaqat Ali','',NULL,'4232',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0302-2948085',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1352,1,'1352','Muhammad Akram ','',NULL,'4232',NULL,'Fatah Muhammad',NULL,NULL,NULL,'0311-2489760',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1353,1,'1353','Muhammad Akram ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0307-3447500',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1354,1,'1354','Muhammad Asif','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0333-3679098',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1355,1,'1355','Muhammad Aslam','',NULL,'4232',NULL,'Adeel Khan',NULL,NULL,NULL,'0306-3043657',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1356,1,'1356','Muhammad Aslam','',NULL,'4232',NULL,'Manhu Khan',NULL,NULL,NULL,'0308-2160933',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1357,1,'1357','Muhammad Aslam (let)','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0303-3527035',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1358,1,'1358','Muhammad Aslam Khan','',NULL,'4232',NULL,'Niaz Ahmed ',NULL,NULL,NULL,'0333-3045085',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1359,1,'1359','Muhammad Ayoub','',NULL,'4232',NULL,'Manhu Khan',NULL,NULL,NULL,'0333-3656858',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1360,1,'1360','Muhammad Faiyaz ','',NULL,'4232',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1361,1,'1361','Muhammad Farooq','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0302-3311918',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1362,1,'1362','Muhammad ilyaas ','',NULL,'4232',NULL,'Muhammad Yousuf Ali Khan',NULL,NULL,NULL,'0334-2552925',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1363,1,'1363','Muhammad Iqbal','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'0333-0230085',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1364,1,'1364','Muhammad Iqbal','',NULL,'4232',NULL,'Muqarib  Ali Khan',NULL,NULL,NULL,'0306-3410402',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1365,1,'1365','Muhammad Iqbal','',NULL,'4232',NULL,'Rehmat Khan',NULL,NULL,NULL,'0331-63763015',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1366,1,'1366','Muhammad Iqbal','',NULL,'4232',NULL,'Rehmat Khan',NULL,NULL,NULL,'0333-2665118',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1367,1,'1367','Muhammad Ishtiaq','',NULL,'4232',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0332-3200531',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1368,1,'1368','Muhammad Islam','',NULL,'4232',NULL,'Niaz Muhammad',NULL,NULL,NULL,'0308-2169383',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1369,1,'1369','Muhammad Jawaid','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0301-3281050',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1370,1,'1370','Muhammad Masoor','',NULL,'4232',NULL,'Mehboob Khan',NULL,NULL,NULL,'0334-2748734',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1371,1,'1371','Muhammad Mehmood','',NULL,'4232',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0306-8224455',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1372,1,'1372','Muhammad Rafique','',NULL,'4232',NULL,'Docter Abdul Sagheer',NULL,NULL,NULL,'0334-2552440',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1373,1,'1373','Muhammad Saleem','',NULL,'4232',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'0300-3498711',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1374,1,'1374','Muhammad Saleem','',NULL,'4232',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0345-3635917',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1375,1,'1375','Muhammad Saleem Khan','',NULL,'4232',NULL,'Mansoor Ali',NULL,NULL,NULL,'0334-2551541',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1376,1,'1376','Muhammad Saleem Khan','',NULL,'4232',NULL,'Shahadat Khan',NULL,NULL,NULL,'0334-3692139',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1377,1,'1377','Muhammad Saroor ','',NULL,'4232',NULL,'Shareef Khan',NULL,NULL,NULL,'0300-5567515',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1378,1,'1378','Muhammad Sawal','',NULL,'4232',NULL,'Shaista ',NULL,NULL,NULL,'0300-2697596',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1379,1,'1379','Muhammad Shahid ','',NULL,'4232',NULL,'Daud ',NULL,NULL,NULL,'0301-2751646',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1380,1,'1380','Muhammad Shamshad ','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0344-2211210',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1381,1,'1381','Muhammad Tufail Khan','',NULL,'4232',NULL,'Sattar Khan',NULL,NULL,NULL,'0343-3716527',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1382,1,'1382','Muhammad Umsna (let)','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0310-2904650',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1383,1,'1383','Muhammad Usman','',NULL,'4232',NULL,'Azfar Ali',NULL,NULL,NULL,'0300-3114193',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1384,1,'1384','Muhammad Usman','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0305-8039274',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1385,1,'1385','Muhammad Usman','',NULL,'4232',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0306-3043657',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1386,1,'1386','Muhammad Younus ','',NULL,'4232',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0306-9866196',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1387,1,'1387','Muhammad Yousuf ','',NULL,'4232',NULL,'Umer Khan',NULL,NULL,NULL,'0336-8449669',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1388,1,'1388','Muhammad Yousuf Ali ','',NULL,'4232',NULL,'Banu Khan ',NULL,NULL,NULL,'0301-3912738',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1389,1,'1389','Muhammad Zulfiqar','',NULL,'4232',NULL,'Nathu Khan',NULL,NULL,NULL,'0334-2551305',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1390,1,'1390','Muhammd  Shabbir ','',NULL,'4232',NULL,'Muhammad Yousuf ',NULL,NULL,NULL,'0308-3517930',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1391,1,'1391','Mukhtiar Ahmed ','',NULL,'4232',NULL,'Wahid Ali ',NULL,NULL,NULL,'0306-4151401',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1392,1,'1392','Munawwar Ali','',NULL,'4232',NULL,'Kareem Ali Khan',NULL,NULL,NULL,'0333-4673155',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1393,1,'1393','Munawwar Ali','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0303-2655275',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1394,1,'1394','Munawwar Ali','',NULL,'4232',NULL,'Mojdeen Khan',NULL,NULL,NULL,'0300-3323633',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1395,1,'1395','Mushtaq Muhammad','',NULL,'4232',NULL,'Adal Khan',NULL,NULL,NULL,'0301-3289561',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1396,1,'1396','Naem Khan','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0333-3045085',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1397,1,'1397','Nazeer Ahmed ','',NULL,'4232',NULL,'Adal Khan',NULL,NULL,NULL,'0331-3167668',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1398,1,'1398','Niaz Ahmed','',NULL,'4232',NULL,'Adal Khan',NULL,NULL,NULL,'0333-2783422',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1399,1,'1399','Nisaar Khan','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'0306-3058942',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1400,1,'1400','Nisaar Khan','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0336-3778408',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1401,1,'1401','Noshaad Ahmed ','',NULL,'4232',NULL,'Sher Ali Khan',NULL,NULL,NULL,'0300-3305717',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1402,1,'1402','Rafique Ahmed ','',NULL,'4232',NULL,'AL - Din Khan',NULL,NULL,NULL,'0303-3930452',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1403,1,'1403','Rafque Khan','',NULL,'4232',NULL,'Niaz Khan',NULL,NULL,NULL,'0302-2001090',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1404,1,'1404','Rashid','',NULL,'4232',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0307-2750935',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1405,1,'1405','Razak Khan','',NULL,'4232',NULL,'Abdul Hamid Khan',NULL,NULL,NULL,'0334-0764688',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1406,1,'1406','Riasat  Ali ','',NULL,'4232',NULL,'Wajid Ali',NULL,NULL,NULL,'0331-3640743',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1407,1,'1407','Sabir Ali ','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0331-6855397',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1408,1,'1408','Saeed Ahmed ','',NULL,'4232',NULL,'Nazer Muhammad',NULL,NULL,NULL,'0332-3312781',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1409,1,'1409','Shakeel','',NULL,'4232',NULL,'Muhammad Shareef Khan',NULL,NULL,NULL,'0301-3864081',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1410,1,'1410','Sohail','',NULL,'4232',NULL,'Iftakar Ahmed',NULL,NULL,NULL,'0307-8496730 ',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1411,1,'1411','Taaj Muhammad ','',NULL,'4232',NULL,'Fais Muhammad',NULL,NULL,NULL,'0334-2151304',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1412,1,'1412','Taaj Muhammad ','',NULL,'4232',NULL,'Umer Khan',NULL,NULL,NULL,'0300-9290727',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1413,1,'1413','Wajid Ali ','',NULL,'4232',NULL,'Baksh Khan',NULL,NULL,NULL,'0331-2939119',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1414,1,'1414','Zulfiqaar Ali','',NULL,'4232',NULL,'Shahadat Khan',NULL,NULL,NULL,'0301-3287737',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1415,1,'1415','Zulfiqar Ahmed ','',NULL,'4232',NULL,'Fais Muhammad',NULL,NULL,NULL,'0307-2425245',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1416,1,'1416','Zulfiqar Ahmed ','',NULL,'4232',NULL,'Muhammad Ishaaq Khan',NULL,NULL,NULL,'0333-2925046',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1417,1,'1417','Zulfiqar Ali','',NULL,'4232',NULL,' Nazar Muhammad ',NULL,NULL,NULL,'0333-2536221',NULL,NULL,'Ward#4',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1418,1,'1418','Capt. Yaseen Khan','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0333-2249927',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1419,1,'1419','Ghulam Nabi','',NULL,'4232',NULL,'Ahmed Ali Khan',NULL,NULL,NULL,'0331-3890515',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1420,1,'1420','Hafeez Ali Khan','',NULL,'4232',NULL,'Wahid Ali Khan',NULL,NULL,NULL,'0308-3540263',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1421,1,'1421','Haji Gulzar ','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'0300-3057767',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1422,1,'1422','Iftikhar Ahmed ','',NULL,'4232',NULL,'Mehboob Ali ',NULL,NULL,NULL,'',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1423,1,'1423','Master Mehboob Ali','',NULL,'4232',NULL,'Ashraf Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1424,1,'1424','Muhammad Abbas','',NULL,'4232',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0305-3791473',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1425,1,'1425','Muhammad Akber','',NULL,'4232',NULL,'Hoshiar Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1426,1,'1426','Muhammad Akber','',NULL,'4232',NULL,'Shafi Khan',NULL,NULL,NULL,'0301-3281599',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1427,1,'1427','Muhammad Ayoub','',NULL,'4232',NULL,'Yameen Muhammad',NULL,NULL,NULL,'0336-3149232',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1428,1,'1428','Muhammad Farooq','',NULL,'4232',NULL,'Hashim Ali ',NULL,NULL,NULL,'0331-3885937',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1429,1,'1429','Muhammad Fayyaz','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0332-2158941',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1430,1,'1430','Muhammad Hafeez','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0344-3512002',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1431,1,'1431','Muhammad Ilyas ','',NULL,'4232',NULL,'Dost Muhammad ',NULL,NULL,NULL,'0333-2534265',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1432,1,'1432','Muhammad Islam','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1433,1,'1433','Muhammad Islam','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1434,1,'1434','Muhammad Jamil Danish','',NULL,'4232',NULL,'Dr. Jabbar',NULL,NULL,NULL,'0333-2834412',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1435,1,'1435','Muhammad Khalid','',NULL,'4232',NULL,'Ashar Ali Khan',NULL,NULL,NULL,'0331-2932061',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1436,1,'1436','Muhammad Mukhtear','',NULL,'4232',NULL,'Muhammad Ali ',NULL,NULL,NULL,'0306-3310058',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1437,1,'1437','Muhammad Nisar','',NULL,'4232',NULL,'Mehboob Ali ',NULL,NULL,NULL,'0301-3581594',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1438,1,'1438','Muhammad Tasleem','',NULL,'4232',NULL,'Noor Muhammad ',NULL,NULL,NULL,'0333-2536090',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1439,1,'1439','Muhammad Tufail','',NULL,'4232',NULL,'Babu Younus',NULL,NULL,NULL,'0333-2981683',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1440,1,'1440','Muhammad Yasin Khan','',NULL,'4232',NULL,'Rehmat Ali Khan',NULL,NULL,NULL,'0334-2563872',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1441,1,'1441','Muhammad Younus ','',NULL,'4232',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'0302-3390990',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1442,1,'1442','Muhammd Mukhtear','',NULL,'4232',NULL,'Muhammad Ishaque',NULL,NULL,NULL,'0333-4445992',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1443,1,'1443','Rashid Ali','',NULL,'4232',NULL,'Hashim Ali ',NULL,NULL,NULL,'0334-2804919',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1444,1,'1444','Rashid Minhas','',NULL,'4232',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0331-7157230',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1445,1,'1445','Shamshad Ali','',NULL,'4232',NULL,'Abdul Ghafoor Khan',NULL,NULL,NULL,'0300-3321214',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1446,1,'1446','Shamsher Khan','',NULL,'4232',NULL,'Fateh Muhammad ',NULL,NULL,NULL,'0335-3755394',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1447,1,'1447','Talib Husain ','',NULL,'4232',NULL,'Munshi Khan',NULL,NULL,NULL,'0301-3530782',NULL,NULL,'Ward#5',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1448,1,'1448','Abdul Rashed ','',NULL,'4232',NULL,'Razaq Ahmed ',NULL,NULL,NULL,'0307-3416010',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1449,1,'1449','Altaf Ahmed ','',NULL,'4232',NULL,'Umeed Khan',NULL,NULL,NULL,'0300-3320307',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1450,1,'1450','Ataf Ahmed ','',NULL,'4232',NULL,'Mushtaq Ahmed ',NULL,NULL,NULL,'0333-2243517',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1451,1,'1451','Haji Shabeer','',NULL,'4232',NULL,'Feroz Khan',NULL,NULL,NULL,'0307-3063866',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1452,1,'1452','Israr Ahmed','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1453,1,'1453','Jabbar Khan','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0302-3094282',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1454,1,'1454','Jahangeer Ali ','',NULL,'4232',NULL,' Naseer Khan',NULL,NULL,NULL,'0300-3492669',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1455,1,'1455','Khursheed Ali','',NULL,'4232',NULL,'Subhan Khan',NULL,NULL,NULL,'0333-4330458',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1456,1,'1456','Liaquat Ali ','',NULL,'4232',NULL,'Jaffar Ali',NULL,NULL,NULL,'0307-3009349',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1457,1,'1457','Liaquat Ali ','',NULL,'4232',NULL,'Subhan Khan',NULL,NULL,NULL,'0301-3283755',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1458,1,'1458','Muhamad Abid ','',NULL,'4232',NULL,'Muqarab Ali ',NULL,NULL,NULL,'0336-3544964',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1459,1,'1459','Muhammad  Irfan ','',NULL,'4232',NULL,'Umeed Khan',NULL,NULL,NULL,'0342-3085941',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1460,1,'1460','Muhammad Akhlaq','',NULL,'4232',NULL,'Umeed Khan',NULL,NULL,NULL,'0300-3320319',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1461,1,'1461','Muhammad Arif ','',NULL,'4232',NULL,'Saleem Ullah ',NULL,NULL,NULL,'0300-3494990',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1462,1,'1462','Muhammad Ashfaq ','',NULL,'4232',NULL,'Umeed Khan',NULL,NULL,NULL,'0332-2246130',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1463,1,'1463','Muhammad Ayoub ','',NULL,'4232',NULL,'Muqarab Ali ',NULL,NULL,NULL,'0336-3431173',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1464,1,'1464','Muhammad Hanif','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0333-7456053',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1465,1,'1465','Muhammad Hussain','',NULL,'4232',NULL,'Muhammad Idrees',NULL,NULL,NULL,'0301-3280976',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1466,1,'1466','Muhammad Imran ','',NULL,'4232',NULL,'Umeed Khan',NULL,NULL,NULL,'0334-2770818',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1467,1,'1467','Muhammad Rafique','',NULL,'4232',NULL,'Feroz Khan',NULL,NULL,NULL,'0307-3449721',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1468,1,'1468','Muhammad Saddiq ','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0333-0230229',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1469,1,'1469','Muhammad Sarwar','',NULL,'4232',NULL,'Abdul Majeed',NULL,NULL,NULL,'0308-3271225',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1470,1,'1470','Muhammad Yaseen','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0300-3447731',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1471,1,'1471','Mumtaz Ali ','',NULL,'4232',NULL,' Muhammad Ali ',NULL,NULL,NULL,'0302-2543695',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1472,1,'1472','Mumtaz Ali ','',NULL,'4232',NULL,' Muhammad Khan',NULL,NULL,NULL,'0334-2552502',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1473,1,'1473','Naeemullah  Khan','',NULL,'4232',NULL,'Ehsan Ullah ',NULL,NULL,NULL,'0300-2300560',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1474,1,'1474','Shoukat Ali ','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0303-3157830',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1475,1,'1475','Shoukat Ali ','',NULL,'4232',NULL,'Subhan Khan',NULL,NULL,NULL,'0333-2776620',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1476,1,'1476','Zain-ul-Abidin','',NULL,'4232',NULL,'Munwar Khan',NULL,NULL,NULL,'0302-2907988',NULL,NULL,'Ward#6',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1477,1,'1477','Abdul Hamed (Let)','',NULL,'4232',NULL,'Ata Ullah',NULL,NULL,NULL,'0333-3630340',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1478,1,'1478','Abdul Jabbar','',NULL,'4232',NULL,'Jaffar Ali',NULL,NULL,NULL,'0307-3437400',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1479,1,'1479','Abdul Jabbar','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'0302-2517808',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1480,1,'1480','Abdul Jabbar ','',NULL,'4232',NULL,'Muhamma Yamin',NULL,NULL,NULL,'0333-2533154',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1481,1,'1481','Abdul Khaliq','',NULL,'4232',NULL,' Muhammad Sidduique',NULL,NULL,NULL,'0334-3705773',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1482,1,'1482','Abdul Qadeer ','',NULL,'4232',NULL,'Abdul Azizi',NULL,NULL,NULL,'0302-2667982',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1483,1,'1483','Abdul Saboor ','',NULL,'4232',NULL,'Muhammad Siddique',NULL,NULL,NULL,'0333-2511290',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1484,1,'1484','Abdul Sattar ','',NULL,'4232',NULL,'Aiwaz Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1485,1,'1485','Abid Gulaab','',NULL,'4232',NULL,'Muhammad Gulaab',NULL,NULL,NULL,'0302-3971935',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1486,1,'1486','Ahsan','',NULL,'4232',NULL,'Kareem Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1487,1,'1487','Akhtar Hussain ','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0333-9209333',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1488,1,'1488','Ala Bachayo','',NULL,'4232',NULL,'Fareed Khan',NULL,NULL,NULL,'0300-3316288',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1489,1,'1489','Ali Hamed ','',NULL,'4232',NULL,'Yousufi Ali',NULL,NULL,NULL,'0334-2100726',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1490,1,'1490','Ali Hasan','',NULL,'4232',NULL,'Munshi Khan',NULL,NULL,NULL,'0307-0939454',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1491,1,'1491','Ali Raza ','',NULL,'4232',NULL,'Ali Sher',NULL,NULL,NULL,'0308-3812755',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1492,1,'1492','Ali Sher ','',NULL,'4232',NULL,'Hidayat Ali Khan',NULL,NULL,NULL,'0300-3323527',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1493,1,'1493','Ali Sher ','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0305-3274849',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1494,1,'1494','Asghar Ali','',NULL,'4232',NULL,' Arshad Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1495,1,'1495','Azhar ','',NULL,'4232',NULL,'Sabir ',NULL,NULL,NULL,'0331-6950925',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1496,1,'1496','Fiaz Ahmed ','',NULL,'4232',NULL,'Muhammad Sadiq ',NULL,NULL,NULL,'0333-2544266',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1497,1,'1497','Hafiz Naseem','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1498,1,'1498','Hafiz Waseem','',NULL,'4232',NULL,'Asad Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1499,1,'1499','Iftikhar Ahmed ','',NULL,'4232',NULL,'Shabir Ahmed ',NULL,NULL,NULL,'0336-3225582',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1500,1,'1500','Inayat','',NULL,'4232',NULL,'Baha-Udin Khan',NULL,NULL,NULL,'0333-8802867',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1501,1,'1501','Ishtiaq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2937842',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1502,1,'1502','Jang Sher','',NULL,'4232',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1503,1,'1503','Jang Sher','',NULL,'4232',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0334-3583710',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1504,1,'1504','Jawaid Ahmed','',NULL,'4232',NULL,'Abdul Majeed',NULL,NULL,NULL,'0305-3141603',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1505,1,'1505','M .Iqbal ','',NULL,'4232',NULL,'Basheer Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1506,1,'1506','M Mushtaq Ahmed ','',NULL,'4232',NULL,'Kaly Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1507,1,'1507','Maqsood Ali ','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0302-2955239',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1508,1,'1508','Mohammad Ahmed ','',NULL,'4232',NULL,' Muhammad Ayoob',NULL,NULL,NULL,'  0301-3636133',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1509,1,'1509','Mohammad Zafar','',NULL,'4232',NULL,'Dost Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1510,1,'1510','Muhammad Ahsan','',NULL,'4232',NULL,'Shamsher Ali',NULL,NULL,NULL,'0300-3424622',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1511,1,'1511','Muhammad Akram','',NULL,'4232',NULL,'Ghulam Muhammad',NULL,NULL,NULL,'0346-3768019',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1512,1,'1512','Muhammad Akram','',NULL,'4232',NULL,'Haji Raqmudin',NULL,NULL,NULL,'0333-2581791',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1513,1,'1513','Muhammad Akram ','',NULL,'4232',NULL,'Akber Ali',NULL,NULL,NULL,'0300-3324067',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1514,1,'1514','Muhammad Arif ','',NULL,'4232',NULL,'Khutumudin Risaldar',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1515,1,'1515','Muhammad Asghar','',NULL,'4232',NULL,'Muhammad Hashim',NULL,NULL,NULL,'0334-2633237',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1516,1,'1516','Muhammad Asif','',NULL,'4232',NULL,'Muhammad Akram',NULL,NULL,NULL,'0300-2563430',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1517,1,'1517','Muhammad Aslam','',NULL,'4232',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0334-3027080',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1518,1,'1518','Muhammad Aslam','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'0332-3785285',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1519,1,'1519','Muhammad Aslam','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0301-3280050',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1520,1,'1520','Muhammad Aslam ','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-3308330',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1521,1,'1521','Muhammad Aslam ','',NULL,'4232',NULL,'Mehboob Ali ',NULL,NULL,NULL,'0302-2743706',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1522,1,'1522','Muhammad Ayoob ','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0333-2606594',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1523,1,'1523','Muhammad Ayoob ','',NULL,'4232',NULL,'Jaffar Ali',NULL,NULL,NULL,'0300-9215112',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1524,1,'1524','Muhammad Azaad','',NULL,'4232',NULL,'Zishan Ali',NULL,NULL,NULL,'0345-3718151',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1525,1,'1525','Muhammad Bilal','',NULL,'4232',NULL,'Muhammad Yamin',NULL,NULL,NULL,'0334-3054198',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1526,1,'1526','Muhammad Farooq','',NULL,'4232',NULL,'Farzand Ali',NULL,NULL,NULL,'0300-3323359',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1527,1,'1527','Muhammad Farooq','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1528,1,'1528','Muhammad Hussain','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0334-2633417',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1529,1,'1529','Muhammad Iftikhar','',NULL,'4232',NULL,'Yousuf  Ali',NULL,NULL,NULL,'0303-3161052',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1530,1,'1530','Muhammad Imran','',NULL,'4232',NULL,'Muhammad Yousuf',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1531,1,'1531','Muhammad Iqbal','',NULL,'4232',NULL,'Hashim Ali',NULL,NULL,NULL,'0307-4594966',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1532,1,'1532','Muhammad Ishaq','',NULL,'4232',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1533,1,'1533','Muhammad Jabbar','',NULL,'4232',NULL,'Umeed Ali',NULL,NULL,NULL,'0303-3153628',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1534,1,'1534','Muhammad Jameed Khan','',NULL,'4232',NULL,'Dost Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1535,1,'1535','Muhammad Jawaid ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1536,1,'1536','Muhammad Jawaid ','',NULL,'4232',NULL,'Umar Ali ',NULL,NULL,NULL,'0336-2110220',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1537,1,'1537','Muhammad Luqman','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0331-3802140',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1538,1,'1538','Muhammad Mehmood','',NULL,'4232',NULL,'Muhammad Ayoob',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1539,1,'1539','Muhammad Mubeen','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0331-3891884',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1540,1,'1540','Muhammad Naseem','',NULL,'4232',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0333-2703042',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1541,1,'1541','Muhammad Qasim ','',NULL,'4232',NULL,'Hashim Ali ',NULL,NULL,NULL,'0332-5200254',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1542,1,'1542','Muhammad Qayoom','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1543,1,'1543','Muhammad Sadiq','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0308-3579812',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1544,1,'1544','Muhammad Sadiq','',NULL,'4232',NULL,'Noor Muhammad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1545,1,'1545','Muhammad Saleem','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0345-3713591',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1546,1,'1546','Muhammad Shabeer','',NULL,'4232',NULL,'Azeemudin',NULL,NULL,NULL,'0302-3312128',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1547,1,'1547','Muhammad Shahid ','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1548,1,'1548','Muhammad Shoaib','',NULL,'4232',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-2993909',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1549,1,'1549','Muhammad Tariq ','',NULL,'4232',NULL,'Muhammad Ayoob ',NULL,NULL,NULL,'0332-2487820',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1550,1,'1550','Muhammad Umar','',NULL,'4232',NULL,'Muhammad Hakeem',NULL,NULL,NULL,'0333-2991989',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1551,1,'1551','Muhammad Wasim ','',NULL,'4232',NULL,'Muhammad Akram ',NULL,NULL,NULL,'0300-3002639',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1552,1,'1552','Muhammad Yameen','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2925069',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1553,1,'1553','Muhammad Yamin ','',NULL,'4232',NULL,'Umeed Ali ',NULL,NULL,NULL,'0300-3304474',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1554,1,'1554','Muhammad Zaheer','',NULL,'4232',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0331-4598848',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1555,1,'1555','Muhammad Zahid','',NULL,'4232',NULL,'Abdul Majeed',NULL,NULL,NULL,'0300-3321208',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1556,1,'1556','Munshi Khan ','',NULL,'4232',NULL,'Nawab Ali',NULL,NULL,NULL,'0335-3971897',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1557,1,'1557','Nasar Ali ','',NULL,'4232',NULL,'Imdad Ali',NULL,NULL,NULL,'0302-2955239',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1558,1,'1558','Nasir Ali','',NULL,'4232',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0332-8261509',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1559,1,'1559','Nisaar Ahmed ','',NULL,'4232',NULL,'Hayat Muhammad',NULL,NULL,NULL,'0302-2155293',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1560,1,'1560','Noushaad Ali9 ','',NULL,'4232',NULL,'Shamshed Ali ',NULL,NULL,NULL,'0307-3573800',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1561,1,'1561','Pervaiz Ali','',NULL,'4232',NULL,'Muhamad Basheer',NULL,NULL,NULL,'0333-2547342',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1562,1,'1562','Rafique Ahmed ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-5985201',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1563,1,'1563','Riaz Ahmed','',NULL,'4232',NULL,' Muhammad Sadiq',NULL,NULL,NULL,'0300-3324671',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1564,1,'1564','Safdar Hanif','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0333-7312054',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1565,1,'1565','Shakeel Ahmed ','',NULL,'4232',NULL,'Arshad ',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1566,1,'1566','Shamshed Ali ','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0301-2455005',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1567,1,'1567','Shamsher ','',NULL,'4232',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0333-2705650',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1568,1,'1568','Umeed Ali','',NULL,'4232',NULL,'Annu Khan',NULL,NULL,NULL,'0305-2882582',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1569,1,'1569','Waseem Khan','',NULL,'4232',NULL,'Ahsan',NULL,NULL,NULL,'',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1570,1,'1570','Waseem Muhammad','',NULL,'4232',NULL,'Hayat Khan',NULL,NULL,NULL,'0300-9098037',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1571,1,'1571','Younus','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0300-3329352',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1572,1,'1572','Zulfiqaar Ali ','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0336-2583524',NULL,NULL,'Ward#7',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1573,1,'1573','Abdul Gaffar','',NULL,'4232',NULL,'Mehboob Ali',NULL,NULL,NULL,'0300-3300395',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1574,1,'1574','Abdul Gaffar ','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0300-4424644',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1575,1,'1575','Abdul Ghaffar ','',NULL,'4232',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0302-2755210',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1576,1,'1576','Abdul Jabbar','',NULL,'4232',NULL,'Mehboob Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1577,1,'1577','Abdul Jabbar','',NULL,'4232',NULL,'Muhammad Basheer',NULL,NULL,NULL,'0332-2246715',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1578,1,'1578','Abdul Jabbar ','',NULL,'4232',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0300-3014807',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1579,1,'1579','Abdul Qayoom ','',NULL,'4232',NULL,'Ruqumdin',NULL,NULL,NULL,'0303-3105266',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1580,1,'1580','Abdul Waseem','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0300-3325710',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1581,1,'1581','Aijaaz Ali','',NULL,'4232',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0304-8450907',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1582,1,'1582','Akber Ali','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0308-3315920',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1583,1,'1583','Ali ','',NULL,'4232',NULL,'Muhammad Habeeb',NULL,NULL,NULL,'0332-3384210',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1584,1,'1584','Ali Aahadur','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3244485',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1585,1,'1585','Ali Asghar','',NULL,'4232',NULL,'Nazar Nuhammad ',NULL,NULL,NULL,'0313-3364742',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1586,1,'1586','Ali Asghar','',NULL,'4232',NULL,'Shabir Ahmed ',NULL,NULL,NULL,'0331-3703880',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1587,1,'1587','Ali Gohar','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3244485',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1588,1,'1588','Ali Hassan','',NULL,'4232',NULL,'Ashique Ali',NULL,NULL,NULL,'0303-2434824',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1589,1,'1589','Ali Hassan ','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0302-2329085',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1590,1,'1590','Ali Sher ','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0307-3431787',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1591,1,'1591','Anees Ahmed ','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0331-1385635',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1592,1,'1592','Asghar ','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0301-2761410',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1593,1,'1593','Asghar Ali','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0301-3996882',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1594,1,'1594','Azaad Ali','',NULL,'4232',NULL,'Mumtaz Ali',NULL,NULL,NULL,'0300-3305545',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1595,1,'1595','Bashar Ahmed ','',NULL,'4232',NULL,'Aleem Khan',NULL,NULL,NULL,'0333-2581789',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1596,1,'1596','Farman Ali','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1597,1,'1597','Ghulaam Mushtaba','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0301-3900844',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1598,1,'1598','Ghulam Muhammad ','',NULL,'4232',NULL,'Shahadat Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1599,1,'1599','Gulzaar Ali','',NULL,'4232',NULL,'Sabdal Ali',NULL,NULL,NULL,'0303-3101874',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1600,1,'1600','Gulzhar Ahmed ','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0333-2993524',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1601,1,'1601','Haji Liaqat ','',NULL,'4232',NULL,'Habib Muhammad',NULL,NULL,NULL,'0332-3300568',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1602,1,'1602','Haji Rashid ','',NULL,'4232',NULL,'Muhammad Arshad',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1603,1,'1603','Ibtekhaab Ali','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0311-4089355',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1604,1,'1604','Ikram Hussain','',NULL,'4232',NULL,'Sabdal Ali',NULL,NULL,NULL,'0315-2079810',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1605,1,'1605','Ilyas ','',NULL,'4232',NULL,'Muhmmad Usman',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1606,1,'1606','Imran Khan','',NULL,'4232',NULL,'Muhammad Ishaq ',NULL,NULL,NULL,'0331-5296768',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1607,1,'1607','Jameel Khan','',NULL,'4232',NULL,'Turab Ali',NULL,NULL,NULL,'0334-3000287',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1608,1,'1608','Jawaid ','',NULL,'4232',NULL,'Jabbar',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1609,1,'1609','Jawaid Habeeb','',NULL,'4232',NULL,'Muhammad Habeeb',NULL,NULL,NULL,'0300-3134747',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1610,1,'1610','Jawaid Iqbal','',NULL,'4232',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0301-3327715',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1611,1,'1611','Khalid Waheed','',NULL,'4232',NULL,' Khan Muhammad',NULL,NULL,NULL,'0300-2893794',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1612,1,'1612','Khalid Waheed','',NULL,'4232',NULL,'Abdul Gafoor',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1613,1,'1613','Maqsood Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1614,1,'1614','Maqsood Ali','',NULL,'4232',NULL,'Aashiq Ali',NULL,NULL,NULL,'0333-2916332',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1615,1,'1615','Mehmood Ali','',NULL,'4232',NULL,'Aashiq Ali',NULL,NULL,NULL,'0333-2916332',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1616,1,'1616','Mehmood Ali','',NULL,'4232',NULL,'Abdul Gafoor',NULL,NULL,NULL,'0334-9490800',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1617,1,'1617','Muhammad Abid','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0301-3853457',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1618,1,'1618','Muhammad Akram','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0302-2385009',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1619,1,'1619','Muhammad Altaf','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1620,1,'1620','Muhammad Arshad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0308-3958710',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1621,1,'1621','Muhammad Arshad','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1622,1,'1622','Muhammad Ashghar','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0313-3364742',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1623,1,'1623','Muhammad Asif','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0302-3317741',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1624,1,'1624','Muhammad Aslam','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0300-3025060',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1625,1,'1625','Muhammad Aslam','',NULL,'4232',NULL,'Muhammad Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1626,1,'1626','Muhammad Aslam','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0306-3267519',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1627,1,'1627','Muhammad Aslam','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0332-3260251',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1628,1,'1628','Muhammad Ayoob ','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0300-8257070',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1629,1,'1629','Muhammad Ayoub','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0334-2805010',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1630,1,'1630','Muhammad Dilawar','',NULL,'4232',NULL,'Muhammad Akram',NULL,NULL,NULL,'0305-2963289',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1631,1,'1631','Muhammad Hussain','',NULL,'4232',NULL,'Abdul Majeed',NULL,NULL,NULL,'0305-2124934',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1632,1,'1632','Muhammad Idrees','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0306-3080638',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1633,1,'1633','Muhammad Ilyas Khan ','',NULL,'4232',NULL,'Jahi Faiz Muhammad Khan',NULL,NULL,NULL,'0333-2018160',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1634,1,'1634','Muhammad Imran','',NULL,'4232',NULL,'Muhammad Arshad',NULL,NULL,NULL,'0333-2533031',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1635,1,'1635','Muhammad Iqbal','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'03333-2596319',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1636,1,'1636','Muhammad Iqbal','',NULL,'4232',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0301-2800181',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1637,1,'1637','Muhammad Iqbal','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0306-8224286',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1638,1,'1638','Muhammad Ishaque','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3054600',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1639,1,'1639','Muhammad Jameel','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0307-3435478',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1640,1,'1640','Muhammad Jawaid','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0306-3405423',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1641,1,'1641','Muhammad Jawaid','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0302-3054902',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1642,1,'1642','Muhammad Kashif ','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0302-2329085',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1643,1,'1643','Muhammad Kashif ','',NULL,'4232',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0344-3737732',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1644,1,'1644','Muhammad Luqman','',NULL,'4232',NULL,'Muhammad Usman',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1645,1,'1645','Muhammad Masood ','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1646,1,'1646','Muhammad Nadeem','',NULL,'4232',NULL,'Abdul Hameed ',NULL,NULL,NULL,'0302-3316345',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1647,1,'1647','Muhammad Rashid','',NULL,'4232',NULL,'Muhmmad Usman',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1648,1,'1648','Muhammad Sabir','',NULL,'4232',NULL,'Muhammad Ameen',NULL,NULL,NULL,'0334-2782400',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1649,1,'1649','Muhammad Saleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1650,1,'1650','Muhammad Sami','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1651,1,'1651','Muhammad Sami','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0308-3563544',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1652,1,'1652','Muhammad Shahid ','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0300-3850054',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1653,1,'1653','Muhammad Shakir','',NULL,'4232',NULL,'Nasir Ali',NULL,NULL,NULL,'0301-3702179',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1654,1,'1654','Muhammad Suleman','',NULL,'4232',NULL,' Muhammad Sidduique',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1655,1,'1655','Muhammad Tariq','',NULL,'4232',NULL,'Jaffar Khan',NULL,NULL,NULL,'0300-3323455',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1656,1,'1656','Muhammad Usman','',NULL,'4232',NULL,'Safdar Khan',NULL,NULL,NULL,'0300-4998789',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1657,1,'1657','Muhammad Waseem ','',NULL,'4232',NULL,'Abdul Rasheed ',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1658,1,'1658','Muhammad Younus ','',NULL,'4232',NULL,'Haji Ruqamdin',NULL,NULL,NULL,'0334-2957201',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1659,1,'1659','Muhammad Younus ','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0307-3440645',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1660,1,'1660','Muhammad Younus ','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0300-3513946  ',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1661,1,'1661','Muhammad Zia Ul Haq','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1662,1,'1662','Muhammd Rauf','',NULL,'4232',NULL,'Abdul Aziz',NULL,NULL,NULL,'0312-2878910',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1663,1,'1663','Mushtaq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1664,1,'1664','Mushtaq Usman','',NULL,'4232',NULL,'Risaal Dar Haji Khan',NULL,NULL,NULL,'0345-3710085',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1665,1,'1665','Nasar Ali','',NULL,'4232',NULL,'Imanudin',NULL,NULL,NULL,'0333-3323892',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1666,1,'1666','Saleem ','',NULL,'4232',NULL,'Asad Ali',NULL,NULL,NULL,'0300-3323522',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1667,1,'1667','Shabbir Ahmed ','',NULL,'4232',NULL,'Aleem Khan',NULL,NULL,NULL,'0301-3222077',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1668,1,'1668','Shahid Ahmed ','',NULL,'4232',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0300-3066850',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1669,1,'1669','Shahzad Ali','',NULL,'4232',NULL,'Zishan Ali',NULL,NULL,NULL,'0334-2817488',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1670,1,'1670','Shakeel Ahmed ','',NULL,'4232',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0307-3514706',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1671,1,'1671','Shamsher Ali','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1672,1,'1672','Shoaib Ahmed ','',NULL,'4232',NULL,'Abdul Majeed (Late)',NULL,NULL,NULL,'0300-943287',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1673,1,'1673','Shuakat Ali','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1674,1,'1674','Shuakat Ali','',NULL,'4232',NULL,'Taaj Muhammad ',NULL,NULL,NULL,'0305-3274849',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1675,1,'1675','Tahir Ali','',NULL,'4232',NULL,'Muhammad Ameen',NULL,NULL,NULL,'0300-3323505',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1676,1,'1676','Tahir Mohib','',NULL,'4232',NULL,'Mehboob Ali',NULL,NULL,NULL,'0334-3706065',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1677,1,'1677','Zia Ul Haq ','',NULL,'4232',NULL,'Muhammad Siddque',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1678,1,'1678','Zulfikaar Ali','',NULL,'4232',NULL,'Haji Nazar Muhammad ',NULL,NULL,NULL,'0344-3748417',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1679,1,'1679','Zulfiqaar Ali','',NULL,'4232',NULL,'Farzand Ali',NULL,NULL,NULL,'0333-1959090',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1680,1,'1680','Zulfiqar','',NULL,'4232',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,'0300-3321161',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1681,1,'1681','Zulfiqar Ahmed ','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0333-2533163',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1682,1,'1682','Zulfiqar Ali','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'',NULL,NULL,'Ward#8',NULL,'','Sindh','JHUDDO',NULL,NULL,NULL),
(1683,1,'1683','Raza Khan','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#  -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1684,1,'1684','Muhammad Saror','',NULL,'4232',NULL,'Mushtaq Ali Khan',NULL,NULL,NULL,'0334-7384824',NULL,NULL,'House#78',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1685,1,'1685','Manzoor','',NULL,'4232',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'0300-3358625',NULL,NULL,'House#80',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1686,1,'1686','Hassan Ali Khan','',NULL,'4232',NULL,'Alam Ali khan',NULL,NULL,NULL,'0301-3890551',NULL,NULL,'House#82',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1687,1,'1687','Khalid ','',NULL,'4232',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0300-3002263',NULL,NULL,'House#83',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1688,1,'1688','Tariq ','',NULL,'4232',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0333-0429090',NULL,NULL,'House#83',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1689,1,'1689','Zahid','',NULL,'4232',NULL,'Azeem Khan',NULL,NULL,NULL,'0300-3092485',NULL,NULL,'House#85',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1690,1,'1690','Athar','',NULL,'4232',NULL,'Anoor Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#86',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1691,1,'1691','Khalid Hakeem','',NULL,'4232',NULL,'Noor Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1692,1,'1692','Muhammad Asif','',NULL,'4232',NULL,'Shareef Khan',NULL,NULL,NULL,'0306-2096461',NULL,NULL,'House#72',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1693,1,'1693','Muhammad Kamran','',NULL,'4232',NULL,'Shareef Khan',NULL,NULL,NULL,'0313-1305300',NULL,NULL,'House#71',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1694,1,'1694','Muhammad Rizwan','',NULL,'4232',NULL,'Shareef Khan',NULL,NULL,NULL,'0300-3001816',NULL,NULL,'House#71',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1695,1,'1695','Muhammad Noman','',NULL,'4232',NULL,'Shareef Khan',NULL,NULL,NULL,'0301-2876006',NULL,NULL,'House#71',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1696,1,'1696','Taaj Muhammad','',NULL,'4232',NULL,'Khan Muhammad',NULL,NULL,NULL,'0333-2830525',NULL,NULL,'House#74',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1697,1,'1697','Muhammad Iqbal','',NULL,'4232',NULL,'Amjad Ali Khan',NULL,NULL,NULL,'0305-3607240',NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1698,1,'1698','Muhammad Adnan','',NULL,'4232',NULL,'Saleem Khan',NULL,NULL,NULL,'0312-3949701',NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1699,1,'1699','Muhammad Islam','',NULL,'4232',NULL,'Himmat Khan',NULL,NULL,NULL,'0308-3355119',NULL,NULL,'House#43',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1700,1,'1700','Muhammad Iqbal','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1701,1,'1701','Muhammad Ibrahim','',NULL,'4232',NULL,'Azeem Ud Din',NULL,NULL,NULL,'0336-3553567',NULL,NULL,'House#1041',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1702,1,'1702','Amir','',NULL,'4232',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,NULL,'House#1041',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1703,1,'1703','Abid','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0313-3224820',NULL,NULL,'House#1041',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1704,1,'1704','Ahmed Nasir ','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0345-3700394',NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1705,1,'1705','Mushtaq Ahmed ','',NULL,'4232',NULL,'Mumtaz Ahmed',NULL,NULL,NULL,'0345-3660610',NULL,NULL,'House#34',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1706,1,'1706','Afsheen Haider','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'0336-6876744',NULL,NULL,'House#34',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1707,1,'1707','Usman Ghani','',NULL,'4232',NULL,'Mushtaq Ahmed',NULL,NULL,NULL,'',NULL,NULL,'House#34',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1708,1,'1708','Muhammad Akhtar','',NULL,'4232',NULL,'Hussain Khan',NULL,NULL,NULL,'0300-3656743',NULL,NULL,'House# -',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1709,1,'1709','Muhammad Qasim','',NULL,'4232',NULL,'Akhter Ali',NULL,NULL,NULL,'0336-3106104',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1710,1,'1710','Abdul Qadir','',NULL,'4232',NULL,'Aleem Khan',NULL,NULL,NULL,'0311-3062748',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1711,1,'1711','Hassan Ali Khan','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0311-3650387',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1712,1,'1712','Muhammad Akram','',NULL,'4232',NULL,'Mushtaq Khan',NULL,NULL,NULL,'0302-3977345',NULL,NULL,'House#99',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1713,1,'1713','Muhammad Asfar','',NULL,'4232',NULL,'Ameer Deen Khan',NULL,NULL,NULL,'',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1714,1,'1714','Muhammad Sabir Khan','',NULL,'4232',NULL,'Asfar Khan',NULL,NULL,NULL,'0313-3207928',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1715,1,'1715','Zafer Mubarak','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1716,1,'1716','Muhammad Tariq','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0336-2599090',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1717,1,'1717','Muhammad Rashid','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1718,1,'1718','Muhammad  Ali','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1719,1,'1719','Muhammad Arshad ','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0333-5243076',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1720,1,'1720','Shakeel Ahmed ','',NULL,'4232',NULL,'Saleem Khan',NULL,NULL,NULL,'0306-9191715',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1721,1,'1721','Taimoor ','',NULL,'4232',NULL,'Shakeel Ahmed ',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1722,1,'1722','Danish ','',NULL,'4232',NULL,'Islaam Deen Khan',NULL,NULL,NULL,'0333-2835270',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1723,1,'1723','Ahmed ','',NULL,'4232',NULL,'Asfeer Khan',NULL,NULL,NULL,'0303-3988722',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1724,1,'1724','Shahbaz Khan','',NULL,'4232',NULL,'Karmakab Khan',NULL,NULL,NULL,'0301-3596149',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1725,1,'1725','Sagheer Ahmed ','',NULL,'4232',NULL,'Shabeer Ahmed ',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1726,1,'1726','Waseem Ahmed ','',NULL,'4232',NULL,'Shahbaz Ahmed ',NULL,NULL,NULL,NULL,NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1727,1,'1727','Muhammad Yousuf','',NULL,'4232',NULL,'Muhammad Rafique',NULL,NULL,NULL,'0313-2938440',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1728,1,'1728','Muhammad Khalid ','',NULL,'4232',NULL,'Asghar Khan',NULL,NULL,NULL,'0313-3802492',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1729,1,'1729','Muhammad Junaid ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0313-3802492',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1730,1,'1730','Muhammad Rizwan ','',NULL,'4232',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0312-3130365',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1731,1,'1731','Muhammad Mushtaq','',NULL,'4232',NULL,'Nadeem Ahmed ',NULL,NULL,NULL,'0305-3034340',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1732,1,'1732','Muhammad Saleem','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0312-8884036',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1733,1,'1733','Wqaeel Ahmed ','',NULL,'4232',NULL,'Ismail Khan',NULL,NULL,NULL,'0332-2783572',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1734,1,'1734','Muhammad Saleem','',NULL,'4232',NULL,'Saleem Khan',NULL,NULL,NULL,'0307-3128271',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1735,1,'1735','Adnan','',NULL,'4232',NULL,'Nisar Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1736,1,'1736','Adil Mushtaq','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0333-2836757',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1737,1,'1737','Muhammad Jafer','',NULL,'4232',NULL,'Jiwan Khan',NULL,NULL,NULL,'0300-3084717',NULL,NULL,'House#391',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1738,1,'1738','Muhammad Rashid ','',NULL,'4232',NULL,'Aladeen Khan',NULL,NULL,NULL,'0331-7731645',NULL,NULL,'House#424',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1739,1,'1739','Muhammad Waqas','',NULL,'4232',NULL,'Muhammad Islam',NULL,NULL,NULL,'0312-9922234',NULL,NULL,'House#424',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1740,1,'1740','Zain Anayat','',NULL,'4232',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0300-3560929',NULL,NULL,'House#413',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1741,1,'1741','Zubair ','',NULL,'4232',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0333-3349066',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1742,1,'1742','Ala Deen Khan','',NULL,'4232',NULL,'Raheem Khan',NULL,NULL,NULL,'0313-3167078',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1743,1,'1743','Muhammad Kamran','',NULL,'4232',NULL,'Ala Deen Khan',NULL,NULL,NULL,'0333-0295053',NULL,NULL,'House#129',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1744,1,'1744','Sohail Bin Jafer','',NULL,'4232',NULL,'Muhammad Jafer',NULL,NULL,NULL,'0332-3980692',NULL,NULL,'House#391',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1745,1,'1745','Muhammad Akram','',NULL,'4232',NULL,'Jiwan Khan',NULL,NULL,NULL,'0300-3098187',NULL,NULL,'House#477',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1746,1,'1746','Muhammad Younus','',NULL,'4232',NULL,'Jiwan Khan',NULL,NULL,NULL,'0315-5960353',NULL,NULL,'House#477',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1747,1,'1747','Ghulaam Mustafa','',NULL,'4232',NULL,'Abdul Hakeem',NULL,NULL,NULL,'0344-3096199',NULL,NULL,'House#481',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1748,1,'1748','Muhammad Waqar','',NULL,'4232',NULL,'Muhammad Akram',NULL,NULL,NULL,'0333-2836238',NULL,NULL,'House#424',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1749,1,'1749','Shafqat ','',NULL,'4232',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0301-3150055',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1750,1,'1750','Imran Khan','',NULL,'4232',NULL,'Mustafa Khan',NULL,NULL,NULL,'0344-3096199',NULL,NULL,'House#481',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1751,1,'1751','Abid Khan','',NULL,'4232',NULL,'Jafer Ali Khan',NULL,NULL,NULL,'0300-3300214',NULL,NULL,'House#857',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1752,1,'1752','Abdullah Khan','',NULL,'4232',NULL,'Abid Husaain',NULL,NULL,NULL,'0300-600214',NULL,NULL,'House#857',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1753,1,'1753','Asif','',NULL,'4232',NULL,' Muhammad Aslam',NULL,NULL,NULL,'0331-3628885',NULL,NULL,'House#768',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1754,1,'1754','Haq Nawaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3056900 ',NULL,NULL,'House#867',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1755,1,'1755','Shehzad Ali Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-3076155',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1756,1,'1756','Peer Zada Abdullah','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0342-3663206',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1757,1,'1757','Shams Yaseen ','',NULL,'4232',NULL,'Shahzad Ali Khan',NULL,NULL,NULL,'0342-6616666',NULL,NULL,'House#86',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1758,1,'1758','Mehboob Ali Khan','',NULL,'4232',NULL,'Jabri Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1759,1,'1759','Maqsood Khan','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0345-3703069',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1760,1,'1760','Khusbu Khan','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0307-3074581',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1761,1,'1761','Imran Khan','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-3643719',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1762,1,'1762','Imran Khan','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0300-808719',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1763,1,'1763','Muhammad Ali Khan','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0306-3441407',NULL,NULL,'House#061',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1764,1,'1764','Mansoor Ali Khan','',NULL,'4232',NULL,'Muhammad Ali',NULL,NULL,NULL,'0306-3518044',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1765,1,'1765','Shakeel Ahmed ','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0341-9590900',NULL,NULL,'House#46',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1766,1,'1766','Ayub Khan ','',NULL,'4232',NULL,'Yaqoob Khan',NULL,NULL,NULL,'0312-3746310',NULL,NULL,'House#867',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1767,1,'1767','Shahid Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0342-4660260',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1768,1,'1768','Khalid Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0306-3072700',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1769,1,'1769','Sajid Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1770,1,'1770','Shahid Khan','',NULL,'4232',NULL,'Haji Mumtaz Ali',NULL,NULL,NULL,'03022-102900',NULL,NULL,'House#499',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1771,1,'1771','Jawaid Ali Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0331-3825570',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1772,1,'1772','Asif Rizwan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0307-7711190',NULL,NULL,'House#-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1773,1,'1773','Muhammad Ali','',NULL,'4232',NULL,'Sikandar Ali Khan',NULL,NULL,NULL,'0300-3241732',NULL,NULL,'House#867',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1774,1,'1774','Muhammad Ali Khan','',NULL,'4232',NULL,'Muhammad Ayub',NULL,NULL,NULL,'0345-3703281',NULL,NULL,'House#498',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1775,1,'1775','Ata Ullah Khan','',NULL,'4232',NULL,'Nasar Ullah',NULL,NULL,NULL,'0301-3890280',NULL,NULL,'House#498',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1776,1,'1776','Sana Ullah ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0333-2326570',NULL,NULL,'House#498',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1777,1,'1777','Sabir Ali','',NULL,'4232',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0300-3039626',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1778,1,'1778','Doc Muhammad Abbas','',NULL,'4232',NULL,'Muhammad Yaseen',NULL,NULL,NULL,'0300-3245290',NULL,NULL,'House#999',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1779,1,'1779','Zeeshan','',NULL,'4232',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0313-3070594',NULL,NULL,'House#500',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1780,1,'1780','Danish ','',NULL,'4232',NULL,'Mumtaz',NULL,NULL,NULL,'0345-3703076',NULL,NULL,'House#499',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1781,1,'1781','Naveed','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0307-8246606',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1782,1,'1782','Rehan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0342-3645595',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1783,1,'1783','Raheel','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0308-3106754',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1784,1,'1784','Moin Uddin','',NULL,'4232',NULL,'Phool Khan',NULL,NULL,NULL,'0342-3691814',NULL,NULL,'House#426',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1785,1,'1785','Muhammad Nakash','',NULL,'4232',NULL,'Moin Uddin',NULL,NULL,NULL,NULL,NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1786,1,'1786','Muhammad Bilal','',NULL,'4232',NULL,'Muhammad younus',NULL,NULL,NULL,'0307-8225903',NULL,NULL,'House#426',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1787,1,'1787','Naeem Ul Haq','',NULL,'4232',NULL,'Abdul Haq',NULL,NULL,NULL,'0306-3408547',NULL,NULL,'House#500',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1788,1,'1788','Muhammad Aslam','',NULL,'4232',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0304-3028405',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1789,1,'1789','Majid Ali ','',NULL,'4232',NULL,'Roshan Ali Khan',NULL,NULL,NULL,'0342-3910262',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1790,1,'1790','Jawaid','',NULL,'4232',NULL,'Azfer Ali',NULL,NULL,NULL,'0300-3083687',NULL,NULL,'House#499',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1791,1,'1791','Shoaib Alam','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0302-8039115',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1792,1,'1792','Muhammad Tofique ','',NULL,'4232',NULL,'Mehboob Ali Khan',NULL,NULL,NULL,'0313-3669392',NULL,NULL,'House#426',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1793,1,'1793','Muhammad Abbas ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0346-3623986',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1794,1,'1794','Jawaid Akhter','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0310-3816391',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1795,1,'1795','Junaid Kamran','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0344-2160264',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1796,1,'1796','Liaqat Ali ','',NULL,'4232',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0332-3922043',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1797,1,'1797','Muhammad Ali','',NULL,'4232',NULL,'Hassan Ali Khan',NULL,NULL,NULL,'0306-3079107',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1798,1,'1798','Muhammad Arshad ','',NULL,'4232',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0333-2838036',NULL,NULL,'House#403',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1799,1,'1799','Imran Fatah','',NULL,'4232',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0300-2367576',NULL,NULL,'House#495',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1800,1,'1800','Kamran','',NULL,'4232',NULL,'Fatah Muhammad ',NULL,NULL,NULL,'0345-3706641',NULL,NULL,'House#495',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1801,1,'1801','Khalid Fatah','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-3002636',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1802,1,'1802','Muhammad Waqas','',NULL,'4232',NULL,'Khalid Fatah',NULL,NULL,NULL,'0345-1395800',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1803,1,'1803','Robail Iqbal ','',NULL,'4232',NULL,'Iqbal Ali Khan',NULL,NULL,NULL,'0310-3134095',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1804,1,'1804','Muhammad Waseem','',NULL,'4232',NULL,'Yaqoob Ali Khan',NULL,NULL,NULL,'0306-2614950',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1805,1,'1805','Muhammad Nadeem','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-2359190',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1806,1,'1806','Asma Ali','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-3088485',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1807,1,'1807','Muhammad Hashim ','',NULL,'4232',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0301-3990878',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1808,1,'1808','Muhammad Azam','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0307-3040815',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1809,1,'1809','Muhammad  Imran ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0306-3015800',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1810,1,'1810','Muhammad Bilal','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0331-3822563',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1811,1,'1811','Ali Sher Khan','',NULL,'4232',NULL,'Azfer Ali',NULL,NULL,NULL,'0345-3730798',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1812,1,'1812','Ishtiaq Babar ','',NULL,'4232',NULL,'Asghar Ali',NULL,NULL,NULL,'0321-3207363',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1813,1,'1813','Ashfaq Ahmed ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-3042526',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1814,1,'1814','Muhammad Bilal','',NULL,'4232',NULL,'Mohiuddin Khan',NULL,NULL,NULL,'0333-3722236',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1815,1,'1815','Hasam Ul Haq ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3806070',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1816,1,'1816','Muhammad Kafayat ','',NULL,'4232',NULL,'Anayat Ali Khan',NULL,NULL,NULL,'0336-2828386',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1817,1,'1817','Muhammad Abid','',NULL,'4232',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1818,1,'1818','Abdul Rasheed ','',NULL,'4232',NULL,'Azfer Ali',NULL,NULL,NULL,'0300-9378874',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1819,1,'1819','Muhammad Zubair','',NULL,'4232',NULL,'Muhammad yousuf ',NULL,NULL,NULL,'0301-3521575',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1820,1,'1820','Muhammad Tahir ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0300-3448507',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1821,1,'1821','Muhammad shoaib','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0310-3816447',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1822,1,'1822','Muhammad Furqan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0301-5071208',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1823,1,'1823','Muhammad Ilyas ','',NULL,'4232',NULL,'Alim Ali Khan',NULL,NULL,NULL,'0333-8230053',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1824,1,'1824','Muhammad Irshad ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0301-3542975',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1825,1,'1825','Muhammad Shahid','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0344-3946118',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1826,1,'1826','Zeeshan Alam','',NULL,'4232',NULL,'Alam Khan',NULL,NULL,NULL,'0345-3707750',NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1827,1,'1827','Zubair Ahmed Khan','',NULL,'4232',NULL,'Nazar Ullah',NULL,NULL,NULL,NULL,NULL,NULL,'House#430',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1828,1,'1828','Zunair Ahmed ','',NULL,'4232',NULL,'Zubair Ahmed ',NULL,NULL,NULL,'0331-3156488',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1829,1,'1829','Docter Irfan','',NULL,'4232',NULL,'Yousuf Ali Khan',NULL,NULL,NULL,'0332-3312128',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1830,1,'1830','Salah Muhammad ','',NULL,'4232',NULL,'Raheem Baskh',NULL,NULL,NULL,'0313-3199958',NULL,NULL,'House#853',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1831,1,'1831','Deen Muhammad ','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0331-38272583',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1832,1,'1832','Ajmal ','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0313-3199958',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1833,1,'1833','Akber Hassan','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0304-2703701',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1834,1,'1834','Muhammad Hussain','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0313-3861014',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1835,1,'1835','Shfih Muhammad ','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0311-0075393',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1836,1,'1836','Abdullah','',NULL,'4232',NULL,'Salah Muhammad ',NULL,NULL,NULL,'0332-8992352',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1837,1,'1837','Muhammad Abbbas','',NULL,'4232',NULL,'Alam Ali khan',NULL,NULL,NULL,'0308-3596034',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1838,1,'1838','Haji Mama Shabbeer','',NULL,'4232',NULL,'Haji Ullah Baksh',NULL,NULL,NULL,'0344-3436840',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1839,1,'1839','Shahid daad','',NULL,'4232',NULL,'Dado Ali Khan',NULL,NULL,NULL,'0301-3732649',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1840,1,'1840','Aslam','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0336-2268086',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1841,1,'1841','Akram','',NULL,'4232',NULL,'Mushtak Khan',NULL,NULL,NULL,'0300-3090890',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1842,1,'1842','Wali Muhammad ','',NULL,'4232',NULL,'Asghar Muhammad',NULL,NULL,NULL,'0313-3348958',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1843,1,'1843','Muhammad Ali','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0300-2269826',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1844,1,'1844','Aslam Hussain','',NULL,'4232',NULL,'Abdullah Hakeem',NULL,NULL,NULL,'0302-3058189',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1845,1,'1845','Ahmed Kamal','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0307-3688660',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1846,1,'1846','Muhammad Yousuf','',NULL,'4232',NULL,'Darab Khan',NULL,NULL,NULL,'0300-3034422',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1847,1,'1847','Muhammad Asif ','',NULL,'4232',NULL,'Darab Khan',NULL,NULL,NULL,'0300-3034433',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1848,1,'1848','Docter Muhammad Aslam','',NULL,'4232',NULL,'Younus',NULL,NULL,NULL,'0305-2721490',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1849,1,'1849','Jawaid Iqbal','',NULL,'4232',NULL,'Aleem Khan',NULL,NULL,NULL,'0302-3046960',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1850,1,'1850','Muhammad Umer Farooq','',NULL,'4232',NULL,'Mama Shabbir',NULL,NULL,NULL,'0321-3624390',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1851,1,'1851','Muhammad Sadiq','',NULL,'4232',NULL,'Mama Shabbir',NULL,NULL,NULL,'0312-3866900',NULL,NULL,'House#',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1852,1,'1852','Shahzad ','',NULL,'4232',NULL,'Shamshaad ',NULL,NULL,NULL,'0333-20121330',NULL,NULL,'House# 101 Usmanabad Mirwa Road ',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1853,1,'1853','Abdulhah ','',NULL,'4232',NULL,'ShoaKat  ',NULL,NULL,NULL,'0312-3637078',NULL,NULL,'House# 102 Usmanabad Mirwa Road ',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1854,1,'1854','Altaf Hussain','',NULL,'4232',NULL,'Abdul Hamid ',NULL,NULL,NULL,'0300-3086022',NULL,NULL,'House# 126 Usmanabad Mirwa Road ',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1855,1,'1855','Abdul Salam','',NULL,'4232',NULL,'Abdul Hamid ',NULL,NULL,NULL,'0300-3728690',NULL,NULL,'House# 129 Usmanabad Mirwa Road ',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1856,1,'1856','Muhammad Iqbal ','',NULL,'4232',NULL,'Bazid Khan',NULL,NULL,NULL,'0300-3085177',NULL,NULL,'House# 16 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1857,1,'1857','Muhammad Ibad','',NULL,'4232',NULL,'Bazid Khan',NULL,NULL,NULL,'0300-3358649',NULL,NULL,'House# 16 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1858,1,'1858','Muhammad Akram','',NULL,'4232',NULL,'Ibrahim Sardar',NULL,NULL,NULL,'0301-3564183',NULL,NULL,'House# 19 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1859,1,'1859','Saqib','',NULL,'4232',NULL,'Abbas',NULL,NULL,NULL,NULL,NULL,NULL,'House# 16 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1860,1,'1860','Suhail','',NULL,'4232',NULL,'Iqbal ',NULL,NULL,NULL,NULL,NULL,NULL,'House# 16 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1861,1,'1861','Muhammad Yamin','',NULL,'4232',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,NULL,'House# 19 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1862,1,'1862','Muhammad Altaf','',NULL,'4232',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,NULL,'House# 19 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1863,1,'1863','Muhammad Iqbal','',NULL,'4232',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,'0300-3086048',NULL,NULL,'House# 19 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1864,1,'1864','Muhammad Nadeem','',NULL,'4232',NULL,'Muhammad Ibrahim',NULL,NULL,NULL,NULL,NULL,NULL,'House# 19 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1865,1,'1865','Nasir Khan','',NULL,'4232',NULL,'Ziauddin Khan',NULL,NULL,NULL,'0301-3629609',NULL,NULL,'House# 15 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1866,1,'1866','Muhammad Tahir ','',NULL,'4232',NULL,'Nasir Ali',NULL,NULL,NULL,NULL,NULL,NULL,'House# 15 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1867,1,'1867','Muhammad Tayyab','',NULL,'4232',NULL,'Nasir Ali',NULL,NULL,NULL,'0302-3962932',NULL,NULL,'House# 15 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1868,1,'1868','Muhammad Rashid','',NULL,'4232',NULL,'Nasir Ali',NULL,NULL,NULL,NULL,NULL,NULL,'House# 15 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1869,1,'1869','Muhammad Aslam','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0304-5632760',NULL,NULL,'House# 24 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1870,1,'1870','Aminullah','',NULL,'4232',NULL,'Haseebullah ',NULL,NULL,NULL,'0314-2925856',NULL,NULL,'House# 24 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1871,1,'1871','Muhammad Rafiq','',NULL,'4232',NULL,'Asghar Khan',NULL,NULL,NULL,'0312-6088843',NULL,NULL,'House# 27/28 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1872,1,'1872','Ali Raza','',NULL,'4232',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0312-6088843',NULL,NULL,'House# 27/28 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1873,1,'1873','Arsalan','',NULL,'4232',NULL,'Muhammad Rafiq',NULL,NULL,NULL,'0312-6088843',NULL,NULL,'House# 27/28 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1874,1,'1874','Muhammad Hanif','',NULL,'4232',NULL,'Munu Khan',NULL,NULL,NULL,'0303-2245602',NULL,NULL,'House# 55 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1875,1,'1875','Abdur Rehman','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0303-2245602',NULL,NULL,'House# 55 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1876,1,'1876','Muhammad Nasir','',NULL,'4232',NULL,'Naseer Khan',NULL,NULL,NULL,'0301-3551753',NULL,NULL,'House# 53 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1877,1,'1877','Muhammad Khalid ','',NULL,'4232',NULL,'Naseer Khan',NULL,NULL,NULL,'0305-9254261',NULL,NULL,'House# 51 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1878,1,'1878','Muhammad Aamir','',NULL,'4232',NULL,'Naseer Khan',NULL,NULL,NULL,'0305-9254261',NULL,NULL,'House# 51 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1879,1,'1879','Muhammad Shakir','',NULL,'4232',NULL,'Naseer Khan',NULL,NULL,NULL,'0308-3903142',NULL,NULL,'House# 51 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1880,1,'1880','Naseer Khan','',NULL,'4232',NULL,'Anwar Khan',NULL,NULL,NULL,'0301-3551753',NULL,NULL,'House# 51 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1881,1,'1881','Muhammad Yaqoob','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0331-7731922',NULL,NULL,'House# 22 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1882,1,'1882','Muhammad Yousuf','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0313-8532301',NULL,NULL,'House# 05 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1883,1,'1883','Shahzad Ahmed','',NULL,'4232',NULL,'Shabir Khan',NULL,NULL,NULL,'0345-3712243',NULL,NULL,'House# 63 Rajpot colony Mirwa Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1884,1,'1884','Altaf Hussain','',NULL,'4232',NULL,'Muhammad Yaseen Khan',NULL,NULL,NULL,'0313-3882414',NULL,NULL,'Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1885,1,'1885','Muhammad Ali','',NULL,'4232',NULL,'Innayat Ali Khan',NULL,NULL,NULL,'0334-3626307',NULL,NULL,'House# 86 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1886,1,'1886','Abdul Jabbar','',NULL,'4232',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0301-3997650',NULL,NULL,'House# 86 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1887,1,'1887','Mohsin Ali ','',NULL,'4232',NULL,'Maqsood Ali',NULL,NULL,NULL,'0300-8372082',NULL,NULL,'House# 86 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1888,1,'1888','Ghulam Husain','',NULL,'4232',NULL,'Alladin',NULL,NULL,NULL,'0304-6149322',NULL,NULL,'House# 79 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1889,1,'1889','Muhammad Alam','',NULL,'4232',NULL,'Innayat Ali Khan',NULL,NULL,NULL,'0304-5844155',NULL,NULL,'House# 101 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1890,1,'1890','Muhammad Dilshad','',NULL,'4232',NULL,'Babar Ali Khan',NULL,NULL,NULL,'0304-3261699',NULL,NULL,'House# 95 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1891,1,'1891','Ghulam Mustafa','',NULL,'4232',NULL,'Niaz',NULL,NULL,NULL,NULL,NULL,NULL,'House# 60 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1892,1,'1892','Muhammad Asghar Khan','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0316-3633858',NULL,NULL,'House# 60 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1893,1,'1893','Muhammad Sarwar','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 55 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1894,1,'1894','Zahid','',NULL,'4232',NULL,'Niaz',NULL,NULL,NULL,'0304-3261699',NULL,NULL,'House# 60 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1895,1,'1895','abdul Iklaque','',NULL,'4232',NULL,'Abdul Rahim',NULL,NULL,NULL,'0302-3007969',NULL,NULL,'House# 60 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1896,1,'1896','Hakim Ali','',NULL,'4232',NULL,'Rahim Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 72 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1897,1,'1897','Muhammad Asif','',NULL,'4232',NULL,'Hakim Khan',NULL,NULL,NULL,'0305-9251994',NULL,NULL,'House# 72 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1898,1,'1898','Kashif','',NULL,'4232',NULL,'Hakim Khan',NULL,NULL,NULL,'0310-3815877',NULL,NULL,'House# 72 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1899,1,'1899','Touseef','',NULL,'4232',NULL,'Hakim Khan',NULL,NULL,NULL,'0301-3454038',NULL,NULL,'House# 72 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1900,1,'1900','Muhammad Ali Khan','',NULL,'4232',NULL,'Haji Sujahat Ali Khan',NULL,NULL,NULL,'0300-3057044',NULL,NULL,'House# 78 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1901,1,'1901','Saqib Mehmood','',NULL,'4232',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0300-3057044',NULL,NULL,'House# 78 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1902,1,'1902','Asif Mehmood','',NULL,'4232',NULL,'Mehmood Ali Khan',NULL,NULL,NULL,'0311-7520809',NULL,NULL,'House# 78 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1903,1,'1903','Abdul Sattar','',NULL,'4232',NULL,'Abdul Razzaq',NULL,NULL,NULL,'0300-3084739',NULL,NULL,'House# 78 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1904,1,'1904','Abdul Wahab','',NULL,'4232',NULL,'Abdul Waheed',NULL,NULL,NULL,'0336-0039566',NULL,NULL,'House# 73 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1905,1,'1905','Abdul Hanan','',NULL,'4232',NULL,'Abdul Wahab',NULL,NULL,NULL,'0336-0039566',NULL,NULL,'House# 73 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1906,1,'1906','Abdul Ghani','',NULL,'4232',NULL,'Abdul Rahim Khan',NULL,NULL,NULL,'0313-3067715',NULL,NULL,'House# 74 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1907,1,'1907','Waqas Ahmed','',NULL,'4232',NULL,'Abdul Ghani ',NULL,NULL,NULL,'0313-3067715',NULL,NULL,'House# 74 Abdul Ghani Colony Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1908,1,'1908','Muhammad Yaseen','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0301-3430190',NULL,NULL,'House# 39 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1909,1,'1909','Safdar Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0301-3430190',NULL,NULL,'House# 39 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1910,1,'1910','Mazhar Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0301-3430190',NULL,NULL,'House# 39 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1911,1,'1911','Iqbal Khan','',NULL,'4232',NULL,'Munu Khan',NULL,NULL,NULL,'0333-2504994',NULL,NULL,'House# 77 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1912,1,'1912','Muhammad Imran','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 77 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1913,1,'1913','Nazim','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 77 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1914,1,'1914','Muhammad Salman','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 77 Amanullah Shah Colony near Chamber Road',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1915,1,'1915','Ghulam Mustafa','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0315-2154922',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1916,1,'1916','Aslam','',NULL,'4232',NULL,'Muqarab Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1917,1,'1917','Muhammad Shahid','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0300-3790502',NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1918,1,'1918','Kashif','',NULL,'4232',NULL,'Muhammad Aslam',NULL,NULL,NULL,'0308-3642364',NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1919,1,'1919','Arsalan','',NULL,'4232',NULL,'Aslam Khan',NULL,NULL,NULL,'0312-333739',NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1920,1,'1920','Muhammad Nisar','',NULL,'4232',NULL,'Muqarab Khan',NULL,NULL,NULL,'0310-3134160',NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1921,1,'1921','Asif ','',NULL,'4232',NULL,'Nisar Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1922,1,'1922','Shamsher Ali','',NULL,'4232',NULL,'Rahim Khan',NULL,NULL,NULL,'0302-3246677',NULL,NULL,'House# 991/15Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1923,1,'1923','Abdul Majeed','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0323-3213179',NULL,NULL,'House# 1056 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1924,1,'1924','Muhammad Aslam','',NULL,'4232',NULL,'Mukhtar Khan',NULL,NULL,NULL,'0306-3139436',NULL,NULL,'House# 1056 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1925,1,'1925','Muhammad Waqas','',NULL,'4232',NULL,'Aslam Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 1056 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1926,1,'1926','Mushtaq Ahmed ','',NULL,'4232',NULL,'Sadiq Khan',NULL,NULL,NULL,'0301-3457078',NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1927,1,'1927','Zeeshan Ahmed','',NULL,'4232',NULL,'Mushtaq Ahmed ',NULL,NULL,NULL,NULL,NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1928,1,'1928','Liaquat Ali','',NULL,'4232',NULL,'Sadiq Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1929,1,'1929','Abul Sami','',NULL,'4232',NULL,'Liaquat Ali',NULL,NULL,NULL,NULL,NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1930,1,'1930','Shoukat Ali','',NULL,'4232',NULL,'Sadiq Khan',NULL,NULL,NULL,'0336-3582931',NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1931,1,'1931','Sabir Ali','',NULL,'4232',NULL,'Sadiq Khan',NULL,NULL,NULL,'0344-3452743',NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1932,1,'1932','Muhammad Aslam','',NULL,'4232',NULL,'Muqarab Khan',NULL,NULL,NULL,'0304-2394132',NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1933,1,'1933','Muhammad Bilal','',NULL,'4232',NULL,'Aslam Khan',NULL,NULL,NULL,'0305-3719898',NULL,NULL,'House# 440 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1934,1,'1934','Talib Khan','',NULL,'4232',NULL,'Mukhtar Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 1240 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1935,1,'1935','Saeed Ahmed','',NULL,'4232',NULL,'Talib Khan',NULL,NULL,NULL,'0300-3012434',NULL,NULL,'House# 999 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1936,1,'1936','Nasir Ali','',NULL,'4232',NULL,'Jadder Ali Khan',NULL,NULL,NULL,'0305-2984632',NULL,NULL,'House# 1152 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1937,1,'1937','Jaffer Ali','',NULL,'4232',NULL,'Rahim Khan',NULL,NULL,NULL,'0316-3796079',NULL,NULL,'House# 1152 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1938,1,'1938','Dr. Muhammad Yousuf','',NULL,'4232',NULL,'Gulab Khan',NULL,NULL,NULL,'0300-3081341',NULL,NULL,'House# 1080 Mirwa Road Tando Allahyar',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1939,1,'1939','Muhammad Arshad ','',NULL,'4232',NULL,'Bashir Ahmed',NULL,NULL,NULL,'0304-3022438',NULL,NULL,'Mirwa Road Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1940,1,'1940','Muhammad Adil','',NULL,'4232',NULL,'Bashir Ahmed',NULL,NULL,NULL,'0303-0344682',NULL,NULL,'Mirwa Road Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1941,1,'1941','Ubiad Ahmed','',NULL,'4232',NULL,'Gulab Khan',NULL,NULL,NULL,'0300-3064219',NULL,NULL,'Mirwa Road Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1942,1,'1942','Muhammad Ilyas ','',NULL,'4232',NULL,'Hashim Khan',NULL,NULL,NULL,'0310-0337450',NULL,NULL,'House# 1281 Mirwa Road Tando Allahyar Near KK Scho',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1943,1,'1943','Muhamamd Yaseen Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0331-3923940',NULL,NULL,'Mirwa Road Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1944,1,'1944','Muhammad Yousuf Khan ','',NULL,'4232',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0304-2882263',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1945,1,'1945','Shahab Ahmed','',NULL,'4232',NULL,'Muhammad Ilyas ',NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1946,1,'1946','Aftab','',NULL,'4232',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0335-8127660',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1947,1,'1947','Yasir','',NULL,'4232',NULL,'Muhamamd Yaseen Khan',NULL,NULL,NULL,'0304-3028009',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1948,1,'1948','Mir Murtaza','',NULL,'4232',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,'0344-3551456',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1949,1,'1949','Shamim','',NULL,'4232',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1950,1,'1950','Muhammad Mohsin','',NULL,'4232',NULL,'Muhammad Yousuf Khan ',NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1951,1,'1951','Muhammad Arshad ','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,'0313-3048890',NULL,NULL,'House# 991 Mirwa Road Near Al-Rahim Garden',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1952,1,'1952','Muhammad Mukhtar Khan','',NULL,'4232',NULL,'Junoon Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Mirwa Road Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1953,1,'1953','Muhammad Nadeem','',NULL,'4232',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0301-2246052',NULL,NULL,'Jinnah Town Tando Allahyar Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1954,1,'1954','Muhammad Saleem','',NULL,'4232',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0300-3538334',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1955,1,'1955','Muhammad Faheem','',NULL,'4232',NULL,'Muhammad Mukhtar Khan',NULL,NULL,NULL,'0315-0301963',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1956,1,'1956','Maqsood Ahmed','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0305-1285361',NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1957,1,'1957','Jamshed Khan','',NULL,'4232',NULL,'Rafiq Khan',NULL,NULL,NULL,'0300-5522190',NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1958,1,'1958','Rizwan Khan','',NULL,'4232',NULL,'Rafiq Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1959,1,'1959','Rehan Khan','',NULL,'4232',NULL,'Rafiq Khan',NULL,NULL,NULL,'0331-3816099',NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1960,1,'1960','Shoukat Khan','',NULL,'4232',NULL,'Muqarab Ali Khan',NULL,NULL,NULL,'0308-3948215',NULL,NULL,'House# 158 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1961,1,'1961','Muhammad Nadeem Khan','',NULL,'4232',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0304-2980528',NULL,NULL,'House# 1042 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1962,1,'1962','Muhammad Rizwan','',NULL,'4232',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0308-3090377',NULL,NULL,'House# 1042 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1963,1,'1963','Muhammad Saleem','',NULL,'4232',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0315-0827330',NULL,NULL,'House# 1042 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1964,1,'1964','Imran','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0306-3064080',NULL,NULL,'House# 156 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1965,1,'1965','Abdul Hamid','',NULL,'4232',NULL,'Jaffer Ali Khan',NULL,NULL,NULL,'0300-3097710',NULL,NULL,'House# 156 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1966,1,'1966','Nadeem','',NULL,'4232',NULL,'Alladin Khan',NULL,NULL,NULL,'0304-3088890',NULL,NULL,'House# 126 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1967,1,'1967','Sher Muhammad','',NULL,'4232',NULL,'Ali Muhammad',NULL,NULL,NULL,'0305-3704039',NULL,NULL,'House# 116 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1968,1,'1968','Muneer Khan','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0306-8872708',NULL,NULL,'House# 116 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1969,1,'1969','Faiz Muhammad ','',NULL,'4232',NULL,'Waris Ali Khan',NULL,NULL,NULL,'0300-2933128',NULL,NULL,'House# 118 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1970,1,'1970','Nadeem','',NULL,'4232',NULL,'Sher Khan',NULL,NULL,NULL,'0303-3029001',NULL,NULL,'House# 118 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1971,1,'1971','Younus','',NULL,'4232',NULL,'Alladin Khan',NULL,NULL,NULL,'0300-2389070',NULL,NULL,'House# 120 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1972,1,'1972','Bashir Khan','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0300-3001997',NULL,NULL,'House# 121 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1973,1,'1973','Saleem ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0305-3377002',NULL,NULL,'House# 123 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1974,1,'1974','Waseem','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-3800580',NULL,NULL,'House# 124 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1975,1,'1975','Muhamamd Shoaib','',NULL,'4232',NULL,'Faiz Muhammad ',NULL,NULL,NULL,'0301-3544019',NULL,NULL,'House# 118 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1976,1,'1976','Haji Liaquat','',NULL,'4232',NULL,'Azeem Khan',NULL,NULL,NULL,'0300-3319995',NULL,NULL,'House# 125 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1977,1,'1977','Abdul Manan','',NULL,'4232',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0333-8002185',NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1978,1,'1978','Abdul Rehman','',NULL,'4232',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0300-3093997',NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1979,1,'1979','Abdul Hanan','',NULL,'4232',NULL,'Haji Liaquat Khan',NULL,NULL,NULL,'0300-8384931',NULL,NULL,'Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1980,1,'1980','Muhammad Ali','',NULL,'4232',NULL,'Azeem Khan',NULL,NULL,NULL,'0302-3671228',NULL,NULL,'House# 100 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1981,1,'1981','Azmat Ali Khan','',NULL,'4232',NULL,'Munawar Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 103 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1982,1,'1982','Muhammad Asif','',NULL,'4232',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0333-9031090',NULL,NULL,'House# 103 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1983,1,'1983','Muhammad Arif','',NULL,'4232',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0301-3512419',NULL,NULL,'House# 103 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1984,1,'1984','Muhammad Irfan','',NULL,'4232',NULL,'Azmat Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 103 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1985,1,'1985','Muhammad Farhan','',NULL,'4232',NULL,'Azmat Ali Khan',NULL,NULL,NULL,'0300-7034071',NULL,NULL,'House# 103 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1986,1,'1986','Mehmood Khan','',NULL,'4232',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0305-8424160',NULL,NULL,'House# 104 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1987,1,'1987','Mehboob Ali Khan','',NULL,'4232',NULL,'Umeed Ali Khan',NULL,NULL,NULL,'0302-3994659',NULL,NULL,'House# 104 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1988,1,'1988','Javed Iqbal','',NULL,'4232',NULL,'Majeed ',NULL,NULL,NULL,'0333-2870559',NULL,NULL,'House# 104 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1989,1,'1989','Muhammad Aslam','',NULL,'4232',NULL,'Mustaq Khan',NULL,NULL,NULL,NULL,NULL,NULL,'House# 105 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1990,1,'1990','Muhammad Arif','',NULL,'4232',NULL,'Nazar Muhammad Khan',NULL,NULL,NULL,'0304-2391886',NULL,NULL,'House# 105 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1991,1,'1991','Muhammad Yasir Khan','',NULL,'4232',NULL,'Shabir Khan',NULL,NULL,NULL,'0331-3827398',NULL,NULL,'House# 106 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1992,1,'1992','Muhammad Aslam Khan','',NULL,'4232',NULL,'Nizam Khan',NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1993,1,'1993','Muhammad Riaz Khan','',NULL,'4232',NULL,'Wajid Ali Khan',NULL,NULL,NULL,'0345-6277742',NULL,NULL,'House# 112 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1994,1,'1994','Muhammad Bilal ','',NULL,'4232',NULL,'Shabir Khan',NULL,NULL,NULL,'0306-4470309',NULL,NULL,'House# 110 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1995,1,'1995','Shabir Muhammad ','',NULL,'4232',NULL,'Ali Muhammad ',NULL,NULL,NULL,NULL,NULL,NULL,'House# 117 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1996,1,'1996','Muhammad Sarwar','',NULL,'4232',NULL,'Muhammad Sabir',NULL,NULL,NULL,'0333-2909081',NULL,NULL,'House# 117 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1997,1,'1997','Muhammad Shakeel','',NULL,'4232',NULL,'Khalil Khan',NULL,NULL,NULL,'0300-8647990',NULL,NULL,'House# 117 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1998,1,'1998','Muhammad Iqbal','',NULL,'4232',NULL,'Bhorey Khan',NULL,NULL,NULL,'0301-3548619',NULL,NULL,'House# 117 Jinnah Town Near KK School',NULL,'','Sindh','Tando Allhyar',NULL,NULL,NULL),
(1999,1,'1999','Mustafa Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-8288604',NULL,NULL,'Samaro City',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2000,1,'2000','Ghulam Muhammad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2647028',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2001,1,'2001','Siraj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3748557',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2002,1,'2002','Shahzad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3898433',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2003,1,'2003','Shamshed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-3993926',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2004,1,'2004','Majid Khan(late)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2197970',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2005,1,'2005','Abid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3182365',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2006,1,'2006','Rafique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3306211',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2007,1,'2007','Shafeeq Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2844666',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2008,1,'2008','Shahbaz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2993117',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2009,1,'2009','Nadeem Aijaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3888094',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2010,1,'2010','Saleem Aijaz ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2197970',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2011,1,'2011','Abid Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3304080',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2012,1,'2012','Khalid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3305211',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2013,1,'2013','Asif','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0306-8264710',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2014,1,'2014','Arshad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2975693',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2015,1,'2015','Rashid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3532359',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2016,1,'2016','Master Khadim Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-2724290',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2017,1,'2017','Umer Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3300138',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2018,1,'2018','Mubarak Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-3347890',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2019,1,'2019','Muhammad Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2990600',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2020,1,'2020','Liaqat Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3196820',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2021,1,'2021','Farooq Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3151255',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2022,1,'2022','Mubarak Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0306-3553787',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2023,1,'2023','Tariq Aziz ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3321739',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2024,1,'2024','Kashif Majeed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-6643787',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2025,1,'2025','Ali Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2026,1,'2026','Aslam Shokat  Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-2595755',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2027,1,'2027','Shakil Bilal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2177110',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2028,1,'2028','Shabir Inayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3309070',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2029,1,'2029','Abdul Waheed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2834251',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2030,1,'2030','Master Sabir Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3276367',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2031,1,'2031','Amir Mustafa ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2992559',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2032,1,'2032','Mansoor Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2834251',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2033,1,'2033','Babar Allah Din Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3919812',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2034,1,'2034','Jawaid Allah Din Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3911085',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2035,1,'2035','Majid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3249330',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2036,1,'2036','Farooq Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2808648',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2037,1,'2037','Tofique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3118813',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2038,1,'2038','Ali Raza Ahmed Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3315485',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2039,1,'2039','Zulfiqar Mushtaq Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8316682',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2040,1,'2040','Allahuddin  ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3526702',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2041,1,'2041','Shokat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-0241945',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2042,1,'2042','Sajid Mushtaq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2835574',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2043,1,'2043','Tarique Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2370847',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2044,1,'2044','Mahfooz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3055186',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2045,1,'2045','Ali Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-9605997',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2046,1,'2046','Laique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2823774',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2047,1,'2047','Hamid Mustafa ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-1476660',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2048,1,'2048','Ali Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0303-2825360',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2049,1,'2049','Haji Manzoor Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3304090',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2050,1,'2050','Abdul hameed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3916987',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2051,1,'2051','Asif Hidayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-9607854',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2052,1,'2052','Master Altaf Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2780703',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2053,1,'2053','Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-2354340',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2054,1,'2054','Arif Mustaq ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3321874',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2055,1,'2055','Aurangzaib Shokat ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-3927990',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2056,1,'2056','Amir Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0315-3589635',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2057,1,'2057','Rashid Abid ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2945351',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2058,1,'2058','Ilyaas Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2932712',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2059,1,'2059','Rafique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0312-3242090',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2060,1,'2060','Muhammad yaousuf ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2061,1,'2061','Shamshad Mehboob Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3262861',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2062,1,'2062','Abdul Sattar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3228124',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2063,1,'2063','Rashid Abdul Sattar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3340390',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2064,1,'2064','Jhangir Sartaaj','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2991609',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2065,1,'2065','Hussain Shabeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2317055',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2066,1,'2066','Imran Mehfooz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2625199',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2067,1,'2067','Haji Sher Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3720194',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2068,1,'2068','Nawab Alladin','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2069,1,'2069','Nawab Zeeshan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2070,1,'2070','Nawab Siraaj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2071,1,'2071','Haji Akhter ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2606844',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2072,1,'2072','Bilal Shabber','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2956702',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2073,1,'2073','Habib Allauddin','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-3512533',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2074,1,'2074','Rafique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2075,1,'2075','Zain Bilal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2960609',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2076,1,'2076','Ali Bhai','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2808749',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2077,1,'2077','Akram Hashim','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-6879180',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2078,1,'2078','Khalid Yaseen','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8889190',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2079,1,'2079','Zohaib Sartaaj','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8829090',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2080,1,'2080','Zubair Sartaaj','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-8876933',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2081,1,'2081','Siraaj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3182355',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2082,1,'2082','Waleed Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3179516',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2083,1,'2083','Shahid Siqqique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-7876427',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2084,1,'2084','Arif pir jee','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-8216295',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2085,1,'2085','Master Abdul Qayoom','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2937535',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2086,1,'2086','Abdul Monim ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3142011',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2087,1,'2087','Bilal Mustafa','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7032795',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2088,1,'2088','Guddu Niaz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2089,1,'2089','Foji Basheer','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2525578',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2090,1,'2090','Nawab Jamshed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2834374',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2091,1,'2091','Arshad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2774936',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2092,1,'2092','Nawab Amjad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0303-42954780',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2093,1,'2093','Mumtaz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2094,1,'2094','Saleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2095,1,'2095','Raju Police','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2096,1,'2096','Docter Shamshad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2097,1,'2097','Ameer Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-7845384',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2098,1,'2098','Ali Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0304-3268518',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2099,1,'2099','Akber Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3390804',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2100,1,'2100','Hamid Shokat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2895576',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2101,1,'2101','Ali Bahi','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2102,1,'2102','Nawab Aslam Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-4779690',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2103,1,'2103','Arsalan Ashfaque','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3528074',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2104,1,'2104','Imran Mustafa','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2105,1,'2105','Zaheer Ibrahim','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2830505',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2106,1,'2106','Khadim Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2107,1,'2107','Abid Nasir Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2108,1,'2108','Jhangir ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3144098',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2109,1,'2109','Faisal Bahi','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7158655',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2110,1,'2110','Nawab Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7158655',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2111,1,'2111','Ishteyaque','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2112,1,'2112','Sarfaraz Basheer','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2113,1,'2113','Qari AurangZaib','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2114,1,'2114','Nawab Adeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-0252068',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2115,1,'2115','Muhammad Owais','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-28355064',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2116,1,'2116','Ilyaas ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2117,1,'2117','Ghulam Sarwer','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2118,1,'2118','Shamshed Faiz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2119,1,'2119','Sikander Inayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2055102',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2120,1,'2120','Anwer Mehboob Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2121,1,'2121','Khurram Ilahi Buksh','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2122,1,'2122','Intezar Nabi','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2123,1,'2123','Nadeem Nabi','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2124,1,'2124','Haji Hasmat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2125,1,'2125','Master Khadim Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3213304',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2126,1,'2126','Raes Abdul Hafeez ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2127,1,'2127','Ashfaq Usman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-8007402',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2128,1,'2128','Arif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0305-3544490',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2129,1,'2129','Imran','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3881981',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2130,1,'2130','Ishteyaque','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2131,1,'2131','Qasim Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2132,1,'2132','Arshad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2133,1,'2133','Papo Town','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-0275726',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2134,1,'2134','Umad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2962505',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2135,1,'2135','Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2136,1,'2136','Yousuf  khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7002717',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2137,1,'2137','Master AllaUddin','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2138,1,'2138','Ahsan Farooq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3913867',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2139,1,'2139','Jawad Umad ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3442078',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2140,1,'2140','Nazeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-2501360',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2141,1,'2141','Shabeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-6749751',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2142,1,'2142','Ali Bahadur ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2123438',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2143,1,'2143','Muskhtar Bhai','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3282304',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2144,1,'2144','Dilawar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-981456',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2145,1,'2145','Jamshed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3311756',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2146,1,'2146','Islam k.k','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2995493',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2147,1,'2147','Sikandar Majeed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3550354',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2148,1,'2148','Zia -Ul- Haq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-3313358',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2149,1,'2149','Amjad Majeed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3328428',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2150,1,'2150','Aslam Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-6601763',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2151,1,'2151','Babu Irshad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3536554',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2152,1,'2152','Shahzad Murad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-4444045',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2153,1,'2153','Athar Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3317640',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2154,1,'2154','Asghar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2080018',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2155,1,'2155','Shabir Shokat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-3448250',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2156,1,'2156','Shahnawaz Kok','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3288794',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2157,1,'2157','Nawab Imtiaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-3010680',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2158,1,'2158','Ilyas Usman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2522216',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2159,1,'2159','Mubarak Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2835196',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2160,1,'2160','Shabeer Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2951787',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2161,1,'2161','Abdul Gaffar Murad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3582369',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2162,1,'2162','Kamran ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3322096',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2163,1,'2163','Abdul Rehman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-7154970',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2164,1,'2164','Sultan Jafar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2813010',NULL,NULL,'',NULL,'','Sindh','Samaro',NULL,NULL,NULL),
(2165,1,'2165','Muhammad Jaffer','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-0375851',NULL,NULL,'Sahahi Bazar Sonar Gali ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2166,1,'2166','Muhammad Amin','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2204817',NULL,NULL,'Sahahi Bazar Sonar Gali ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2167,1,'2167','Muhammad Amir','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2953235',NULL,NULL,'Sahahi Bazar Sonar Gali ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2168,1,'2168','Imran','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2509260',NULL,NULL,'Sahahi Bazar Sonar Gali ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2169,1,'2169','Ahsan Zubair','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2843784',NULL,NULL,'Sahahi Bazar Sonar Gali ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2170,1,'2170','Akbar Siddique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3326616',NULL,NULL,'Near Muhammadi Masjid Shahi Bazar',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2171,1,'2171','Late Hashim Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Near Muhammadi Masjid Shahi Bazar',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2172,1,'2172','Nawab','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3247340',NULL,NULL,'Mirch Mandi Road ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2173,1,'2173','Muhammad Jamil','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2838746',NULL,NULL,'Mirch Mandi Road ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2174,1,'2174','Muhammad Rafique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2667000',NULL,NULL,'Mirch Mandi Road ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2175,1,'2175','Muhammad Shafique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Mirch Mandi Road ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2176,1,'2176','Shahid Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Mirch Mandi Road ',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2177,1,'2177','Liaquat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Muhallah Ghareebabad Ward# 319',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2178,1,'2178','Faiz Muhammad ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3933449',NULL,NULL,'Muhallah Ghareebabad Ward# 319',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2179,1,'2179','Muhammad Fayaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3300878',NULL,NULL,'Muhallah Ghareebabad Ward# 319',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2180,1,'2180','Muhammad Waqas','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0303-3013030',NULL,NULL,'Muhallah Ghareebabad Ward# 319',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2181,1,'2181','Javed Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2835458',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2182,1,'2182','Nabi Bux Naz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3565671',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2183,1,'2183','Haji Muhammad Ibrahim','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-3319842',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2184,1,'2184','Abdul Kareem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3265364',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2185,1,'2185','Late Muhammad Khalid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2837997',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2186,1,'2186','Muhammad Arif','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-2304294',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2187,1,'2187','Late Feroz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2188,1,'2188','Naseer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2189,1,'2189','Muhammad Shahid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0310-6028303',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2190,1,'2190','Abdul Jabbar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0311-3021979',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2191,1,'2191','Imran Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0314-7329896',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2192,1,'2192','Majid Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2056584',NULL,NULL,'Near THQ Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2193,1,'2193','Abdul Sattar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3674265',NULL,NULL,'Hasan Colony Near Police Station',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2194,1,'2194','Waseem Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3319879',NULL,NULL,'Hasan Colony Near Police Station',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2195,1,'2195','Muhammad Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-1304495',NULL,NULL,'Hasan Colony Near Police Station',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2196,1,'2196','Shahzad Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3919016',NULL,NULL,'Hasan Colony Near Police Station',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2197,1,'2197','Late Raheem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-1904004',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2198,1,'2198','Muhammad Hanif','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3302693',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2199,1,'2199','Muhammad Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-3316612',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2200,1,'2200','Ghulam Mustafa','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3386692',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2201,1,'2201','Muhammad Rizwan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3346022',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2202,1,'2202','Imran','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0341-3866399',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2203,1,'2203','Muhammad Irfan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0321-2730971',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2204,1,'2204','Abdul Shakoor','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3365243',NULL,NULL,'Khalild Colony Goodown Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2205,1,'2205','Ghulam Qadar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0348-0313388',NULL,NULL,'Mujahid Colony',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2206,1,'2206','Shamsher Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-6375727',NULL,NULL,'Mujahid Colony',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2207,1,'2207','Nadeem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0301-3912663',NULL,NULL,'Mujahid Colony',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2208,1,'2208','Abdul Ghafoor','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-2955711',NULL,NULL,'Zafar Colony',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2209,1,'2209','Ibrahim','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3880990',NULL,NULL,'Munshi Khan',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2210,1,'2210','Muhammad Usman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-2526525',NULL,NULL,'Gareebabad Mirch Mandi Road',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2211,1,'2211','Late Yasin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2212,1,'2212','Muhammad Shakeel','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3051176',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2213,1,'2213','Muhammad Jamil','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0311-3020252',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2214,1,'2214','Muhammad Javed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0313-4625540',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2215,1,'2215','Muhammad Naeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0096-6554167086',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2216,1,'2216','Muhammad Waseem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0347-1392710',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2217,1,'2217','Late Deen Muhammad ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2218,1,'2218','Muhammad Saleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3358772',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2219,1,'2219','Haris Saleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3431043',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2220,1,'2220','Late Abdul Rehman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2221,1,'2221','Muhammad Amir','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3114971',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2222,1,'2222','Muhammad Waqar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3536501',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2223,1,'2223','Muhammad Habib','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3321981',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2224,1,'2224','Mubbashir Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0313-4994390',NULL,NULL,'Village Shooqi Mal Mari Deh Tobanwari',NULL,'','Sindh','KUNRI',NULL,NULL,NULL),
(2225,1,'2225','Shokat  Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-5532997',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2226,1,'2226','Azmat Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-5532998',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2227,1,'2227','Nizzamudin kk','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-5532999',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2228,1,'2228','M.Hussain Qaimkhani','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-5533000',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2229,1,'2229','Liaqat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2163060',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2230,1,'2230','Asif Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-828850',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2231,1,'2231','Jahangir Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-2096669',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2232,1,'2232','Saleem Taaj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-6208529',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2233,1,'2233','Abbas Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3771443',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2234,1,'2234','Adnan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0303-3102860',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2235,1,'2235','Shahmeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-8062634',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2236,1,'2236','Ramzan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2992789',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2237,1,'2237','Abdul Rehman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-3440536',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2238,1,'2238','Abdul Qadir Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-3711164',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2239,1,'2239','Abdul Samad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0307-3312680',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2240,1,'2240','Sikander Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3270285',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2241,1,'2241','Ali Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0340-3937500',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2242,1,'2242','Gull Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-8829061',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2243,1,'2243','Falak Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-3128925',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2244,1,'2244','Nadeem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0346-3936610',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2245,1,'2245','Shahid Mubeen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2776641',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2246,1,'2246','Faisal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-4466660',NULL,NULL,'Kaim khani Muhalla Near Faizan-e Murshid Mosque ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2247,1,'2247','M.Ibrahim Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3661044',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2248,1,'2248','Saqib Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-4445809',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2249,1,'2249','Jamshed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-2807034',NULL,NULL,'Near Thar Bazar Zakariya Masjid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2250,1,'2250','M.Yaseen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2929615',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2251,1,'2251','Imran khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2511559',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2252,1,'2252','Shahid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3773782',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2253,1,'2253','Abid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-3326200',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2254,1,'2254','Haji Waseem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3777171',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2255,1,'2255','Khursheed  Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3777110',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2256,1,'2256','Hammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0332-3518410',NULL,NULL,'Moti Chowk Umer kot',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2257,1,'2257','Usman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'03333-710102',NULL,NULL,'Near Rana Chowk',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2258,1,'2258','Khursheed  Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-8993981',NULL,NULL,'Mistri Rashid Chowk',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2259,1,'2259','Faisal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-3668289',NULL,NULL,'Vehra Road Ward # 315',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2260,1,'2260','Shafique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3472101',NULL,NULL,'Vehra Road Ward # 315',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2261,1,'2261','Liaqat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0335-3826919',NULL,NULL,'Afghan Muhalla Ward# 315',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2262,1,'2262','Naseem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0347-3448155',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2263,1,'2263','Shahmeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0336-3654090',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2264,1,'2264','Arif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3053477',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2265,1,'2265','Niamat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Near Allah Wala Chowk',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2266,1,'2266','Kamran Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0308-3540406',NULL,NULL,'Near Allah Wala Chowk',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2267,1,'2267','Ghulam Mustafa (late)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3897293',NULL,NULL,'Bajeer Muhalla Ward# 311',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2268,1,'2268','Muhammad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0347-0903900',NULL,NULL,'Bajeer Muhalla Ward# 311',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2269,1,'2269','M.Usman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-2778991',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2270,1,'2270','Yaqoob Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0322-3012851',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2271,1,'2271','Muhiuddin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2272,1,'2272','Arif Durab Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0334-3902507',NULL,NULL,'Shahi Bazar Near Faizan -e- Murshid ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2273,1,'2273','Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Bajeer Muhalla Ward# 311',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2274,1,'2274','Ikram Uddin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2836836',NULL,NULL,'Khosa Muhalla ',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2275,1,'2275','M.Mujeeb Khan KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0345-377712',NULL,NULL,'Bajeer Muhalla Ward# 311',NULL,'','Sindh','UMERKOT',NULL,NULL,NULL),
(2276,1,'2276','Muhammad Naeem','',NULL,'4232',NULL,'Khaju Khan',NULL,NULL,NULL,'0300-0351734',NULL,NULL,'H-No 404 W/N  05 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2277,1,'2277','Khalid ','',NULL,'4232',NULL,'Khaju Khan',NULL,NULL,NULL,'0300-3300347',NULL,NULL,'H-No 405 W/05 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2278,1,'2278','M.Rafique ','',NULL,'4232',NULL,'Khaju Khan',NULL,NULL,NULL,'0301-3146100',NULL,NULL,'H-No 406 W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2279,1,'2279','M.Zulfiqar ','',NULL,'4232',NULL,'Hakeem Khan',NULL,NULL,NULL,'0331-7017315',NULL,NULL,'Muhalla Kachil G/G School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2280,1,'2280','M.Akram ','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0331-0208484',NULL,NULL,'H-School Road W/No 5 Garibad KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2281,1,'2281','M.Arif','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0300-3318452',NULL,NULL,'H-1920  H/School Road W/No 5',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2282,1,'2282','M.Waseem ','',NULL,'4232',NULL,'Wali Ullah',NULL,NULL,NULL,'0301-3281200',NULL,NULL,'H/409 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2283,1,'2283','Khalid Hussain','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-3300202',NULL,NULL,'H/403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2284,1,'2284','Abid  Hussain','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-3591239',NULL,NULL,'H/402 G/B Hight School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2285,1,'2285','Imran ','',NULL,'4232',NULL,'Majeed Khan',NULL,NULL,NULL,'0301-3606305',NULL,NULL,'H/530 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2286,1,'2286','Ali Hasan','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0313-3383046',NULL,NULL,'H/531 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2287,1,'2287','Iftekhar','',NULL,'4232',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0301-3606305',NULL,NULL,'H/530 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2288,1,'2288','Ali Hasan','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0313-3383046',NULL,NULL,'H/531 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2289,1,'2289','Iftekhar','',NULL,'4232',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-2245297',NULL,NULL,'G/B High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2290,1,'2290','Shakeel ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0300-9287570',NULL,NULL,'H/528 High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2291,1,'2291','Yamin','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-4808351',NULL,NULL,'High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2292,1,'2292','Firoz Khan','',NULL,'4232',NULL,'Niyatmat Khan',NULL,NULL,NULL,'0305-3039586',NULL,NULL,'High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2293,1,'2293','Munawwar ','',NULL,'4232',NULL,' Assat Ali Khan',NULL,NULL,NULL,'0300-4080774',NULL,NULL,'H/534 A G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2294,1,'2294','Ghafar','',NULL,'4232',NULL,'A. Razaq Khan',NULL,NULL,NULL,'0300-3271920',NULL,NULL,'G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2295,1,'2295','Rafique ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0307-3342056',NULL,NULL,'High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2296,1,'2296','M.Jameel','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0303-3958492',NULL,NULL,'H/529 High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2297,1,'2297','Younus','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0342-3586390',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2298,1,'2298','Jeevan Khan','',NULL,'4232',NULL,'Mazar Muhammad Khan',NULL,NULL,NULL,'0304-1311944',NULL,NULL,'Ward No:5 Moh: Ghareebabad ',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2299,1,'2299','Ishaque','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0301-3913440',NULL,NULL,'G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2300,1,'2300','Ishaque','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0301-3916070',NULL,NULL,'G/B High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2301,1,'2301','Shamshad ','',NULL,'4232',NULL,'Asghar Ali Khan',NULL,NULL,NULL,'0300-3318071',NULL,NULL,'G/B High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2302,1,'2302','Raheel Ahmed','',NULL,'4232',NULL,'M.Aslam',NULL,NULL,NULL,'0300-3347388',NULL,NULL,'Ward-05 High School Road W/5 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2303,1,'2303','M.Jameel Khan','',NULL,'4232',NULL,'Feroz Khan',NULL,NULL,NULL,'0301-3282523',NULL,NULL,'W/1 Gulshane Yamin Near ByPaas KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2304,1,'2304','Iqbal ','',NULL,'4232',NULL,'Hakim Ali Khan',NULL,NULL,NULL,'0341-2427052',NULL,NULL,'W/1 Bay Gulshane Yamin Near KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2305,1,'2305','Meer Hassan ','',NULL,'4232',NULL,'Latif Khan',NULL,NULL,NULL,'0304-1312050',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2306,1,'2306','Mehmood Ali','',NULL,'4232',NULL,'Shokat Ali',NULL,NULL,NULL,'0334-7991302',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2307,1,'2307','M.Rafique ','',NULL,'4232',NULL,'M.Rahim Khan',NULL,NULL,NULL,'0304-2427805',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2308,1,'2308','Nisar Ahmed','',NULL,'4232',NULL,'Rahim Khan',NULL,NULL,NULL,'0308-3276480',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2309,1,'2309','Gul Muhammad ','',NULL,'4232',NULL,'Ali Shair',NULL,NULL,NULL,'0304-9272102',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2310,1,'2310','M.Adris','',NULL,'4232',NULL,'Rahim Khan',NULL,NULL,NULL,'0307-3516070',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2311,1,'2311','Irshad','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'0301-3507926',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2312,1,'2312','Liaqat','',NULL,'4232',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0301-2167581',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2313,1,'2313','Zulfiqar','',NULL,'4232',NULL,'M.Hanif Khan',NULL,NULL,NULL,'0306-3517121',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2314,1,'2314','Ayub','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0305-8020110',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2315,1,'2315','Islam','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0307-2379609',NULL,NULL,'W/2 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2316,1,'2316','Aurangzaib','',NULL,'4232',NULL,'Mehmood Ali khan',NULL,NULL,NULL,'0333-7548926',NULL,NULL,'W/2 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2317,1,'2317','M.iqbal','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0333-1366028',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2318,1,'2318','Mazhar Ali','',NULL,'4232',NULL,'Aleem ',NULL,NULL,NULL,'0301-2504039',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2319,1,'2319','Haji Imad ','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0316-8724434',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2320,1,'2320','M.Ilyas Khan','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0301-3536901',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2321,1,'2321','Islam','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0300-3328493',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2322,1,'2322','Shabbir ','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0304-5646719',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2323,1,'2323','M.Shakeel ','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0300-3853809',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2324,1,'2324','Liaqat Ali Khan','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0336-1342617',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2325,1,'2325','Allah Din ','',NULL,'4232',NULL,'Baghe Khan',NULL,NULL,NULL,'0301-3559233',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2326,1,'2326','Ismail Khan','',NULL,'4232',NULL,'Muraad Khan',NULL,NULL,NULL,'0331-6952362',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2327,1,'2327','Shoukat ','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0331-3272075',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2328,1,'2328','Mehmood ','',NULL,'4232',NULL,'Muraad Khan',NULL,NULL,NULL,'0335-0029079',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2329,1,'2329','Muhammad Younus','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0306-3754088',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2330,1,'2330','A.Hamid ','',NULL,'4232',NULL,'Mehbob Ali',NULL,NULL,NULL,'0334-3377513',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2331,1,'2331','Aslam','',NULL,'4232',NULL,'Nasir Ali',NULL,NULL,NULL,'0300-2682028',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2332,1,'2332','Jawaid','',NULL,'4232',NULL,'Munwwar Ali',NULL,NULL,NULL,'0300-3321045',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2333,1,'2333','Zaheer  ','',NULL,'4232',NULL,'Sadak Ali',NULL,NULL,NULL,'0343-0344354',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2334,1,'2334','Inayat Ali','',NULL,'4232',NULL,'Nazar Muhammad',NULL,NULL,NULL,'0307-7708624',NULL,NULL,'W/1 Bay High School  KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2335,1,'2335','Latif Khan','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0302-3317786',NULL,NULL,'Factory Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2336,1,'2336','Bilal Ahmed ','',NULL,'4232',NULL,'M Iqbal',NULL,NULL,NULL,'0302-2737626',NULL,NULL,'Raja Yamin Society H/A262 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2337,1,'2337','Zubair ','',NULL,'4232',NULL,'Islam  Khan',NULL,NULL,NULL,'0302-2225044',NULL,NULL,'H/A264 Raja Yamin Society KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2338,1,'2338','Nadeem ','',NULL,'4232',NULL,'Mehboob Ali',NULL,NULL,NULL,'0336-5142953',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2339,1,'2339','M.Ali ','',NULL,'4232',NULL,'Mehbob Ali',NULL,NULL,NULL,'0307-0306307',NULL,NULL,'W/1 Factory Road H/10 KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2340,1,'2340','Ghulam Nabi ','',NULL,'4232',NULL,'Mehnu Khan',NULL,NULL,NULL,NULL,NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2341,1,'2341','Sultan','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-5612674',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2342,1,'2342','M.Yousuf','',NULL,'4232',NULL,'M.Altaf Khan',NULL,NULL,NULL,'0300-3294027',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2343,1,'2343','Qasir Farooq','',NULL,'4232',NULL,'Farooque',NULL,NULL,NULL,'0300-3524614',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2344,1,'2344','Ramzan','',NULL,'4232',NULL,'Umar Uddin ',NULL,NULL,NULL,'0306-2761921',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2345,1,'2345','Ali Imam','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0300-2349343',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2346,1,'2346','Shahid Hassan','',NULL,'4232',NULL,'Hassan Muhammad ',NULL,NULL,NULL,'0333-2619852',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2347,1,'2347','Jawaid ','',NULL,'4232',NULL,'Usman Khan',NULL,NULL,NULL,'0303-3443036',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2348,1,'2348','Khalid ','',NULL,'4232',NULL,'Umaid Ali Khan',NULL,NULL,NULL,'0333-3272857',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2349,1,'2349','Amjad ','',NULL,'4232',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0333-0363885',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2350,1,'2350','A.Sattar ','',NULL,'4232',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0300-3328378',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2351,1,'2351','Ali Ahmed ','',NULL,'4232',NULL,'A Ghani ',NULL,NULL,NULL,'0303-3594414',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2352,1,'2352','Abid','',NULL,'4232',NULL,'Umaid Ali Khan',NULL,NULL,NULL,'0331-3882841',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2353,1,'2353','Liaqat Ali','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0303-2412059',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2354,1,'2354','Faisal ','',NULL,'4232',NULL,'Islam Khan',NULL,NULL,NULL,'0308-3240095',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2355,1,'2355','Sajid ','',NULL,'4232',NULL,'Khan Muhammad ',NULL,NULL,NULL,'0335-1200594',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2356,1,'2356','Nawaid ','',NULL,'4232',NULL,' Peer Muhammad',NULL,NULL,NULL,'0300-3591836',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2357,1,'2357','M.Arif ','',NULL,'4232',NULL,'A. Razaque',NULL,NULL,NULL,'0336-3460563',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2358,1,'2358','Aslam Khan ','',NULL,'4232',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0307-3311285',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2359,1,'2359','Tahir ','',NULL,'4232',NULL,'Mehmood Khan',NULL,NULL,NULL,'0300-3302373',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2360,1,'2360','Arshad ','',NULL,'4232',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0301-3911677',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2361,1,'2361','Sagheer ','',NULL,'4232',NULL,'Sadiq Ali Khan',NULL,NULL,NULL,'0334-2559214',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2362,1,'2362','Shakeel ','',NULL,'4232',NULL,'Yasir Khan',NULL,NULL,NULL,'0313-8197460',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2363,1,'2363','Imran ','',NULL,'4232',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3506999',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2364,1,'2364','Shabir','',NULL,'4232',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3327576',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2365,1,'2365','Sarfaraz','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-6360990',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2366,1,'2366','Sadique','',NULL,'4232',NULL,'Muraad Ali',NULL,NULL,NULL,'0300-3307333',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2367,1,'2367','Qayoom ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0335--3520439',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2368,1,'2368','Iftikhar ','',NULL,'4232',NULL,'Haji Bhore Khan ',NULL,NULL,NULL,'0331-2918395',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2369,1,'2369','Rehman','',NULL,'4232',NULL,'Riaz Khan',NULL,NULL,NULL,'0300-4994384',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2370,1,'2370','Ibrahim Khan ','',NULL,'4232',NULL,'Ashgar Khan',NULL,NULL,NULL,'0302-2315215',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2371,1,'2371','Manzoor','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0332-2887499',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2372,1,'2372','Farooque','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0332-1316560',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2373,1,'2373','Mohammad Iqbal','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0305-2686500',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2374,1,'2374','Ayoub Khan ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0336-3923697',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2375,1,'2375','Mushtaq Ahmed','',NULL,'4232',NULL,'Deen Mohammad',NULL,NULL,NULL,'0305-3396545',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2376,1,'2376','Nabi Bux','',NULL,'4232',NULL,'Taj Muhammad Khan',NULL,NULL,NULL,'0307-3014214',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2377,1,'2377','AbduAllah','',NULL,'4232',NULL,'Khalid Khan',NULL,NULL,NULL,'0333-2958885',NULL,NULL,'W/1 Boys High ScHOOL Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2378,1,'2378','Haneef','',NULL,'4232',NULL,'Noor Mohammad',NULL,NULL,NULL,'0333-2737997',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2379,1,'2379','Kouseer','',NULL,'4232',NULL,'Yousuf Khan',NULL,NULL,NULL,'0300-3313735',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2380,1,'2380','Umair','',NULL,'4232',NULL,'Mohammad Siddique',NULL,NULL,NULL,'0334-0358090',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2381,1,'2381','Saddam','',NULL,'4232',NULL,'Malik Sher Khan',NULL,NULL,NULL,'0300-9263666',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2382,1,'2382','Imran ','',NULL,'4232',NULL,'Mohammad Haneef Khan',NULL,NULL,NULL,'0313-3799061',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2383,1,'2383','Mohammad Madad','',NULL,'4232',NULL,'Nawab Ali Khan',NULL,NULL,NULL,'0300-3313224',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2384,1,'2384','Mohammad Yousuf','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0300-3321107',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2385,1,'2385','Sarfaraz','',NULL,'4232',NULL,'Younus Khan',NULL,NULL,NULL,'0332-3300659',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2386,1,'2386','Yasir Khan','',NULL,'4232',NULL,'Ballu Khan',NULL,NULL,NULL,'',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2387,1,'2387','Suleman ','',NULL,'4232',NULL,'Umer Deen',NULL,NULL,NULL,'0300-3050228',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2388,1,'2388','Mohammad Riaz','',NULL,'4232',NULL,'Haleem Khan ',NULL,NULL,NULL,'0304-3310365',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2389,1,'2389','Jibran','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0301-3502832',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2390,1,'2390','Ashger Ali','',NULL,'4232',NULL,'Jeewan Khan',NULL,NULL,NULL,'0300-6665810',NULL,NULL,'Khan W/1 H/100/101 G/B High School',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2391,1,'2391','Mohammad Asif','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-3520825',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2392,1,'2392','Yaqoub','',NULL,'4232',NULL,'Munshi Khan',NULL,NULL,NULL,'0300-3383315',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2393,1,'2393','Aslam Khan ','',NULL,'4232',NULL,'Jeewan Khan',NULL,NULL,NULL,'0335-2044074',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2394,1,'2394','Umar Daraz','',NULL,'4232',NULL,'Shokat Khan',NULL,NULL,NULL,'0300-3482794',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2395,1,'2395','Shabir Khan','',NULL,'4232',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0305-3604977',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2396,1,'2396','Ghulam Qadir','',NULL,'4232',NULL,'Mhanu Khan ',NULL,NULL,NULL,'0302-3246482',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2397,1,'2397','Imran Khan','',NULL,'4232',NULL,'Mohammad Usman Khan',NULL,NULL,NULL,'0307-3348508',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2398,1,'2398','Shoukat Ali','',NULL,'4232',NULL,'Manuu Khan',NULL,NULL,NULL,'0306-3256561',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2399,1,'2399','Umraudin ','',NULL,'4232',NULL,'Manuu Khan',NULL,NULL,NULL,'0301-3282110',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2400,1,'2400','Abdul Razzaq','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0308-2752642',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2401,1,'2401','Shafiq Ahmed','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-3529234',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2402,1,'2402','Talib ','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0301-3283051',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2403,1,'2403','Tariq','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958887',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2404,1,'2404','Irshad Khan','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958881',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2405,1,'2405','Javeed','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958882',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2406,1,'2406','Tayaab','',NULL,'4232',NULL,'Ghulaam Mustufa',NULL,NULL,NULL,'0333-2958886',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2407,1,'2407','Farhan ','',NULL,'4232',NULL,'Akber Khan',NULL,NULL,NULL,'0302-2302220',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2408,1,'2408','Mohammad Hussain','',NULL,'4232',NULL,'Hidayyat Ali',NULL,NULL,NULL,'0331-7753847',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2409,1,'2409','Ghulam Murtaza ','',NULL,'4232',NULL,'Nazar Mohammad',NULL,NULL,NULL,'0300-3908156',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2410,1,'2410','Allahdin','',NULL,'4232',NULL,'Inayaat Khan',NULL,NULL,NULL,'0331-2775034',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2411,1,'2411','Mohammad Yousuf','',NULL,'4232',NULL,'Inayaat Khan',NULL,NULL,NULL,'0300-2870759',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2412,1,'2412','Ibrahim Khan ','',NULL,'4232',NULL,'Inayaat Khan',NULL,NULL,NULL,'0331-3392501',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2413,1,'2413','Farooq ','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0316-0330134',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2414,1,'2414','Dowood Khan','',NULL,'4232',NULL,'Nazar Mohammad',NULL,NULL,NULL,'0306-2280209',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2415,1,'2415','Kashan Khan','',NULL,'4232',NULL,'Shafiq Khan',NULL,NULL,NULL,'0308-6975372',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2416,1,'2416','Mohammad Khalid ','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,'0333-2029769',NULL,NULL,'Factory Road W/1 KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2417,1,'2417','Shafqat Ali','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0301-3281282',NULL,NULL,'403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2418,1,'2418','Shahid','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0333-7153755',NULL,NULL,'403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2419,1,'2419','Toafiq','',NULL,'4232',NULL,'Mehmood Khan',NULL,NULL,NULL,'0300-3990828',NULL,NULL,'403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2420,1,'2420','Nadeem ','',NULL,'4232',NULL,'Saleem Khan',NULL,NULL,NULL,'0300-2695739',NULL,NULL,'403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2421,1,'2421','Peer Mohammad','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3779708',NULL,NULL,'403 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2422,1,'2422','Mohammad Irfan','',NULL,'4232',NULL,'Aziz Khan',NULL,NULL,NULL,'0301-2231131',NULL,NULL,'W/3/228 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2423,1,'2423','Shakeel Ahmeed','',NULL,'4232',NULL,'Shabir Ahmed',NULL,NULL,NULL,'0300-2356455',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2424,1,'2424','Nisar Ahmed','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0334-2969616',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2425,1,'2425','Mohammad Basheer ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0302-2920895',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2426,1,'2426','Imran','',NULL,'4232',NULL,'Liaqat Ali',NULL,NULL,NULL,'0333-4501404',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2427,1,'2427','Shakir Ali','',NULL,'4232',NULL,'Haider Ali',NULL,NULL,NULL,'0306-2290620',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2428,1,'2428','Shamshad Ali','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'0333-6044605',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2429,1,'2429','Iqbal Khan ','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0331-2944233',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2430,1,'2430','Zulfiqar','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0333-2220647',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2431,1,'2431','Yousuf Ali ','',NULL,'4232',NULL,'Rustam Khan',NULL,NULL,NULL,'0300-0281477',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2432,1,'2432','Mohammad Hussain','',NULL,'4232',NULL,'Malik Sher Khan',NULL,NULL,NULL,'0300-3009332',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2433,1,'2433','Mubarik ','',NULL,'4232',NULL,'Sher Ali',NULL,NULL,NULL,'0308-3572079',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2434,1,'2434','SanauAllah','',NULL,'4232',NULL,'BuxuAllah Khan',NULL,NULL,NULL,'0332-2095568',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2435,1,'2435','Sharafat ','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2436,1,'2436','Irshad Ahmed','',NULL,'4232',NULL,'Qadar Khan',NULL,NULL,NULL,'0300-3300153',NULL,NULL,'High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2437,1,'2437','Shahid ','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-0990290',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2438,1,'2438','Shoukat Khan ','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0336-3735797',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2439,1,'2439','Haider Ali','',NULL,'4232',NULL,'Abdul Latif Khan',NULL,NULL,NULL,'0333-0393151',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2440,1,'2440','Liaqat ','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0306-4547200',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2441,1,'2441','Master Qayoom','',NULL,'4232',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0306-3540530',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2442,1,'2442','Munawar Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0300-3321590',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2443,1,'2443','Asif Zahoor ','',NULL,'4232',NULL,'Manwar Khan',NULL,NULL,NULL,'0300-2434148',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2444,1,'2444','Kashif Ali','',NULL,'4232',NULL,'Yaseen Khan',NULL,NULL,NULL,'0300-8371710',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2445,1,'2445','Suhail ','',NULL,'4232',NULL,'Rashid Khan',NULL,NULL,NULL,'0301-3918891',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2446,1,'2446','Javeed','',NULL,'4232',NULL,'Rashid Khan',NULL,NULL,NULL,'0307-3138102',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2447,1,'2447','Hassan','',NULL,'4232',NULL,'Shafiq Khan',NULL,NULL,NULL,'0336-2479499',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2448,1,'2448','Javeed','',NULL,'4232',NULL,'Wahid Khan',NULL,NULL,NULL,'0333-2863991',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2449,1,'2449','Daniyal','',NULL,'4232',NULL,'Ghulam Ghos',NULL,NULL,NULL,'0300-3051190',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2450,1,'2450','Shamsulhaq','',NULL,'4232',NULL,'Mubarak Ali',NULL,NULL,NULL,'',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2451,1,'2451','Abid Hussain','',NULL,'4232',NULL,'Ghulam Rasool Khan',NULL,NULL,NULL,'0306-8507727',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2452,1,'2452','Mohammad Zeeshan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0302-3316906',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2453,1,'2453','Allaudin','',NULL,'4232',NULL,'Jaffer Khan',NULL,NULL,NULL,'0301-3148200',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2454,1,'2454','Ali Sher Khan','',NULL,'4232',NULL,'Jagidar Hayat Khan',NULL,NULL,NULL,'0333-7380511',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2455,1,'2455','Naeem','',NULL,'4232',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0300-3051190',NULL,NULL,'W/3 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2456,1,'2456','Jahangeer ','',NULL,'4232',NULL,'Hayat Khan',NULL,NULL,NULL,'',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2457,1,'2457','Iqbal Khan ','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0333-3172240',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2458,1,'2458','Nisar Ahmed','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0306-2731315',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2459,1,'2459','Mohammad Ali','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0306-3312226',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2460,1,'2460','Abdul Sattar Khan','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-2322366',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2461,1,'2461','Mohammad Jawed','',NULL,'4232',NULL,'Ghulam Rasool Khan',NULL,NULL,NULL,'0306-8268252',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2462,1,'2462','Toafeeq Khan','',NULL,'4232',NULL,'Ilyas Khan',NULL,NULL,NULL,'0300-3300715',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2463,1,'2463','Ghaffar Khan ','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0303-3103011',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2464,1,'2464','Ashraf Ali ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0300-3326719',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2465,1,'2465','Mohammad Adnan','',NULL,'4232',NULL,'Ayoub Khan',NULL,NULL,NULL,'0300-2217701',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2466,1,'2466','Ali Hassan ','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0333-2664880',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2467,1,'2467','Shabir Khan','',NULL,'4232',NULL,'Ahmed Khan',NULL,NULL,NULL,'',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2468,1,'2468','Asif Ali ','',NULL,'4232',NULL,'Shabir Ali',NULL,NULL,NULL,'0300-8171025',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2469,1,'2469','Junaid ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-3322092',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2470,1,'2470','Basheer Khan ','',NULL,'4232',NULL,'Sub Ahmed Khan',NULL,NULL,NULL,'0301-6378526',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2471,1,'2471','Mohammad Akram','',NULL,'4232',NULL,'Qadar Khan',NULL,NULL,NULL,'0343-3592912',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2472,1,'2472','Mehboob Elaahi','',NULL,'4232',NULL,'Ishtiaq Ahmed',NULL,NULL,NULL,'0333-6266689',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2473,1,'2473','Qamaruzaman','',NULL,'4232',NULL,'Haji Munchi',NULL,NULL,NULL,'0300-3316274',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2474,1,'2474','Shabir Khan','',NULL,'4232',NULL,'Aman Khan',NULL,NULL,NULL,'0333-7157055',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2475,1,'2475','Riaz Ahmed','',NULL,'4232',NULL,'Abbaas Khan',NULL,NULL,NULL,'0300-0351362',NULL,NULL,'W/2 Station Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2476,1,'2476','Yousuf Ali ','',NULL,'4232',NULL,'Ilyas Khan',NULL,NULL,NULL,'0334-2131906',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2477,1,'2477','Shamshad Ali','',NULL,'4232',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0300-3442662',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2478,1,'2478','Kashif Ali','',NULL,'4232',NULL,'Mohammad Rehman',NULL,NULL,NULL,'0303-2929139',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2479,1,'2479','Naveed ','',NULL,'4232',NULL,'Wahid Khan',NULL,NULL,NULL,'0301-7211651',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2480,1,'2480','Haji Suleman ','',NULL,'4232',NULL,'Sanwat Khan',NULL,NULL,NULL,'0300-3322357',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2481,1,'2481','Qasim ','',NULL,'4232',NULL,'Sanwat Ali Khan',NULL,NULL,NULL,'0306-2568421',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2482,1,'2482','Mohammad Moosa','',NULL,'4232',NULL,'Inayat Khan',NULL,NULL,NULL,'0333-3442684',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2483,1,'2483','AbduAllah','',NULL,'4232',NULL,'Ramzan Khan',NULL,NULL,NULL,'0333-7156186',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2484,1,'2484','Ziauhaq','',NULL,'4232',NULL,'Mohammad Ayoub Khan',NULL,NULL,NULL,'0301-3913500',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2485,1,'2485','Aftaab ','',NULL,'4232',NULL,'Rustam Khan',NULL,NULL,NULL,'',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2486,1,'2486','Mohammad Zahid ','',NULL,'4232',NULL,'Yaqoob Khan',NULL,NULL,NULL,'0335-2297184',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2487,1,'2487','Iftikhar Amed','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0334-2558167',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2488,1,'2488','Ghulam Mustafa','',NULL,'4232',NULL,'Moosa Khan',NULL,NULL,NULL,'0306-3552249',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2489,1,'2489',' Mohammad Arshad','',NULL,'4232',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0343-3912752',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2490,1,'2490','Rafiq','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0303-3655452',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2491,1,'2491','Mohammad Ahsaan','',NULL,'4232',NULL,'Mumtaaz Khan',NULL,NULL,NULL,'0345-3752448',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2492,1,'2492','Noor Mohammad ','',NULL,'4232',NULL,'Sultan Khan',NULL,NULL,NULL,'0301-3901672',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2493,1,'2493','Younus Khan ','',NULL,'4232',NULL,'Ramzan Khan',NULL,NULL,NULL,'0300-3332081',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2494,1,'2494','Mustafa Khan','',NULL,'4232',NULL,'Wahid Khan',NULL,NULL,NULL,'0301-3911840',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2495,1,'2495','Mohammad Abbas','',NULL,'4232',NULL,'Yousuf Khan',NULL,NULL,NULL,'0306-3090972',NULL,NULL,'W/2 High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2496,1,'2496','Jamshed','',NULL,'4232',NULL,'Wahid Ali',NULL,NULL,NULL,'0331-6837324',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2497,1,'2497','Mohammad Ashraf ','',NULL,'4232',NULL,'Mumtaz ali',NULL,NULL,NULL,'0306-8266303',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2498,1,'2498','Anwer Ali ','',NULL,'4232',NULL,'Sawant Khan',NULL,NULL,NULL,'0303-2829235',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2499,1,'2499','Mohammad Ishaaq','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0321-3426968',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2500,1,'2500','Mujeeb','',NULL,'4232',NULL,' Fazllurehman',NULL,NULL,NULL,'0300-3321215',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2501,1,'2501','','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2502,1,'2502','(Late) Irfan ','',NULL,'4232',NULL,'Aslam',NULL,NULL,NULL,'0308-3848817',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2503,1,'2503','Mohammad Tahir ','',NULL,'4232',NULL,'Mustaq Ahmed',NULL,NULL,NULL,'0300-3329096',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2504,1,'2504','Piyaar Ali ','',NULL,'4232',NULL,'Usman Khan',NULL,NULL,NULL,'0342-3292300',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2505,1,'2505','Khadim Husssain','',NULL,'4232',NULL,'Usman Khan',NULL,NULL,NULL,'0306-2622535',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2506,1,'2506','Aslam Khan ','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0306-3231500',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2507,1,'2507','Shamshad','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0332-2184462',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2508,1,'2508','Mehfooz Khan','',NULL,'4232',NULL,'Nawab Abdul Majeed',NULL,NULL,NULL,'0306-3600576',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2509,1,'2509','Shoukat Khan ','',NULL,'4232',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0306-8268891',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2510,1,'2510','Mohammad Hassan ','',NULL,'4232',NULL,'Hasmat Ali',NULL,NULL,NULL,'0307-2669126',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2511,1,'2511','Gul Mohammad Khan ','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0302-3084395',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2512,1,'2512','Sikandar ','',NULL,'4232',NULL,'Mohammad Yamin Khan',NULL,NULL,NULL,'0300-8954130',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2513,1,'2513','Asif ','',NULL,'4232',NULL,'Nisar Khan',NULL,NULL,NULL,'0302-3909615',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2514,1,'2514','Dolat Khan','',NULL,'4232',NULL,'Umaid Khan',NULL,NULL,NULL,'0307-3061900',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2515,1,'2515','Umaid Ali','',NULL,'4232',NULL,'Mohammad Yasin Khan',NULL,NULL,NULL,'0333-2900613',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2516,1,'2516','Dr Aslam','',NULL,'4232',NULL,'Mohammad Ameer Khan',NULL,NULL,NULL,'0306-8262192',NULL,NULL,'W/6 Telephone Exchange KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2517,1,'2517','Mohammad Arshad','',NULL,'4232',NULL,'Mohammad Manwar Khan',NULL,NULL,NULL,'0331-3887460',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2518,1,'2518','Basheer Ahmed Khan','',NULL,'4232',NULL,'Bhou Khan',NULL,NULL,NULL,'0305-3329730',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2519,1,'2519','Ejaz Ahmed','',NULL,'4232',NULL,'Nazir Khan',NULL,NULL,NULL,'0300-2680389',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2520,1,'2520','Mohammad Yousuf','',NULL,'4232',NULL,'Khadim Hussain',NULL,NULL,NULL,'0307-3188201',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2521,1,'2521','Mohammad Aslam Khan','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-3300772',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2522,1,'2522','Mohammad Ameer ','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0300-3930404',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2523,1,'2523','Zulfiqar','',NULL,'4232',NULL,'Noor Khan',NULL,NULL,NULL,'',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2524,1,'2524','Mohammad Shafiq ','',NULL,'4232',NULL,'Amad Khan',NULL,NULL,NULL,'0333-2967186',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2525,1,'2525','Liaqat Gudy Khan ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0306-3576106',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2526,1,'2526','Toafiq Ahmed','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0333-0272055',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2527,1,'2527','Tahir ','',NULL,'4232',NULL,'Wahid Khan',NULL,NULL,NULL,'0336-3271148',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2528,1,'2528','Mohammad Akram ','',NULL,'4232',NULL,'Taj Mohammad Khan',NULL,NULL,NULL,'0307-3516155',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2529,1,'2529','Mohammad Shahid','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0335-1201247',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2530,1,'2530','Ayoub Khan ','',NULL,'4232',NULL,'Ashgar Ali',NULL,NULL,NULL,'0303-6364004',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2531,1,'2531','Baber ','',NULL,'4232',NULL,'Younus Khan',NULL,NULL,NULL,'0301-3151569',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2532,1,'2532','Shoukat Hayat ','',NULL,'4232',NULL,'Hanif Khan',NULL,NULL,NULL,'0333-2222090',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2533,1,'2533','Zahid Khan ','',NULL,'4232',NULL,'Azhar Ali',NULL,NULL,NULL,'0313-3800480',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2534,1,'2534','Usman Aziz','',NULL,'4232',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0301-3246649',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2535,1,'2535','Arif Khan','',NULL,'4232',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0302-4978508',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2536,1,'2536','Mohammad Imran','',NULL,'4232',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0333-7033653',NULL,NULL,'W/3 Near Madina Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2537,1,'2537','Mohammad Rizwan','',NULL,'4232',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0331-2955400',NULL,NULL,'W/3 Station Road',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2538,1,'2538','Mohammad Asif ','',NULL,'4232',NULL,' Abdul Aziz Khan',NULL,NULL,NULL,'0300-9378902',NULL,NULL,'W/3 Station Road',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2539,1,'2539','Ansar ','',NULL,'4232',NULL,'Sidique Khan',NULL,NULL,NULL,'0336-6893656',NULL,NULL,'W/3 Station Road',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2540,1,'2540','Javaid ','',NULL,'4232',NULL,'Iqbal Ahmed Khan',NULL,NULL,NULL,'0300-9450779',NULL,NULL,'W/3 Station Road',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2541,1,'2541','Irfan ','',NULL,'4232',NULL,'Umer Deen',NULL,NULL,NULL,'0333-2095486',NULL,NULL,'W/3 Station Road',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2542,1,'2542','Khadim Husssain','',NULL,'4232',NULL,'Atta Mohammad Khan',NULL,NULL,NULL,'0331-2775604',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2543,1,'2543','Mohammad Atif Khan','',NULL,'4232',NULL,'Abdul Aziz Khan',NULL,NULL,NULL,'0300-3314725',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2544,1,'2544','Shabir Ahmed','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0304-3650389',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2545,1,'2545','Orangzaib ','',NULL,'4232',NULL,'Mohammad Ali Khan',NULL,NULL,NULL,'0301-3280108',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2546,1,'2546','Shakir Khan','',NULL,'4232',NULL,'Iqbal Ahmed Khan',NULL,NULL,NULL,'0300-3312069',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2547,1,'2547','Shakeel Ahmed ','',NULL,'4232',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0300-3322526',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2548,1,'2548','Allaudiin','',NULL,'4232',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0306-2018400',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2549,1,'2549','Rafiq ','',NULL,'4232',NULL,'Ghulam Ali',NULL,NULL,NULL,'0306-4547244',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2550,1,'2550','Mohammad Hassan ','',NULL,'4232',NULL,'Fayaaz Ahmed',NULL,NULL,NULL,'0336-2917295',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2551,1,'2551','Waqas','',NULL,'4232',NULL,'Haji Mannudin Khan',NULL,NULL,NULL,'0300-7156949',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2552,1,'2552','Khalid ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0306-9193165',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2553,1,'2553','Mohammad Sharif ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0336-3928747',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2554,1,'2554','Itazaar Ahmed','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0313-3539392',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2555,1,'2555','Asif Ali ','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0333-4941449',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2556,1,'2556','Abdul Jabbar ','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0305-2636071',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2557,1,'2557','Asif Istiaq ','',NULL,'4232',NULL,'Istiaq',NULL,NULL,NULL,'0300-3249360',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2558,1,'2558','Zafar Iqbal','',NULL,'4232',NULL,'Iqbal Hussain',NULL,NULL,NULL,'0344-3500021',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2559,1,'2559','Majeed ','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0308-7412209',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2560,1,'2560','Imran ','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,'0307-3441800',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2561,1,'2561','Nisar Ahmed ','',NULL,'4232',NULL,'Mustaq Ahmed',NULL,NULL,NULL,'0333-7071509',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2562,1,'2562','Nadim ','',NULL,'4232',NULL,'Hashim Khan',NULL,NULL,NULL,'0300-3340712',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2563,1,'2563','Abdul Qayoom ','',NULL,'4232',NULL,'AbdullAllah ',NULL,NULL,NULL,'0347-1321142',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2564,1,'2564','Javaid ','',NULL,'4232',NULL,'Sami Khan',NULL,NULL,NULL,'0301-3526529',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2565,1,'2565','Allaudin Khan','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0307-2537900',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2566,1,'2566','Khalid ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-2926504',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2567,1,'2567','Asif ','',NULL,'4232',NULL,'Arshad ',NULL,NULL,NULL,'0301-3305676',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2568,1,'2568','Rashid ','',NULL,'4232',NULL,'Arshad ',NULL,NULL,NULL,'0300-3327844',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2569,1,'2569','Arshad Khan ','',NULL,'4232',NULL,'Nanu Khan',NULL,NULL,NULL,'0306-2763390',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2570,1,'2570','Imran ','',NULL,'4232',NULL,'Haneef Khan',NULL,NULL,NULL,'0302-3999559',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2571,1,'2571','Tahir ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0300-3530067',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2572,1,'2572','Farooq Khan ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0301-3915975',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2573,1,'2573','Taimour ','',NULL,'4232',NULL,'Mehmood Khan',NULL,NULL,NULL,'0334-2559899',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2574,1,'2574','Moinudin Khan','',NULL,'4232',NULL,'Rustam Khan',NULL,NULL,NULL,'0331-3672688',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2575,1,'2575','Shafiq Ahmed','',NULL,'4232',NULL,'Shabir Khan',NULL,NULL,NULL,'0300-8178866',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2576,1,'2576','Aadil ','',NULL,'4232',NULL,'Shabir Khan',NULL,NULL,NULL,'0304-8675184',NULL,NULL,'W/4 Eid Gahh Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2577,1,'2577','Zahid Khan ','',NULL,'4232',NULL,'Deen Mohammad',NULL,NULL,NULL,'0300-3022474',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2578,1,'2578','Asif ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0332-2700925',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2579,1,'2579','Abdul Latif','',NULL,'4232',NULL,'Haji AbduAllah Khan',NULL,NULL,NULL,'0335-2024493',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2580,1,'2580','Haji IqBAL ','',NULL,'4232',NULL,'Laal Khan ',NULL,NULL,NULL,'0307-3347954',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2581,1,'2581','Barkat ','',NULL,'4232',NULL,'Haji AbduAllah',NULL,NULL,NULL,'0303-3688240',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2582,1,'2582','Usman Khan ','',NULL,'4232',NULL,'Haji Mohammad Aziz',NULL,NULL,NULL,'0302-3317696',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2583,1,'2583','Adnan ','',NULL,'4232',NULL,'Faiz Khan',NULL,NULL,NULL,'0333-1722200',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2584,1,'2584','Umer Hayat ','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0306-8227332',NULL,NULL,'W/3 Near Khall KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2585,1,'2585','Zulfiqar','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,'0300-3854019',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2586,1,'2586','Aziz ','',NULL,'4232',NULL,'Nasir Khan',NULL,NULL,NULL,'0306-8265367',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2587,1,'2587','Khalid Ahmed ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0336-2911040',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2588,1,'2588','Mohammad Faheem ','',NULL,'4232',NULL,'Mustafa Khan',NULL,NULL,NULL,'0301-3628248',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2589,1,'2589','Iqbal Khan ','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0307-3031453',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2590,1,'2590','Mohammad Jawed','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0300-3325502',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2591,1,'2591','Mohammad Akram','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0304-5646424',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2592,1,'2592','Mohammad Aslam Khan','',NULL,'4232',NULL,'Abdul Ghani Khan',NULL,NULL,NULL,'0333-3311744',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2593,1,'2593','Mohammad Haneef ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0335-0278898',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2594,1,'2594','Mohammad Siddiq','',NULL,'4232',NULL,'Khaju Khan',NULL,NULL,NULL,'0333-8948578',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2595,1,'2595','Shoukat Khan ','',NULL,'4232',NULL,'Caption Sabdal Khan',NULL,NULL,NULL,'0306-3556606',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2596,1,'2596','Mohammad Aslam','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0307-3314350',NULL,NULL,'W/7 Buladi Colony KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2597,1,'2597','Jamshaid ','',NULL,'4232',NULL,'Mushtaqe Khan',NULL,NULL,NULL,'0305-2560692',NULL,NULL,'W/6 Near Primary School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2598,1,'2598','Umaid Ali','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0335-2149729',NULL,NULL,'W/6 Near Primary School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2599,1,'2599','Mohammad Hussain','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0308-3550485',NULL,NULL,'W/6 Near Exchange Office KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2600,1,'2600','Naveed Ahmed','',NULL,'4232',NULL,'Haji Moosa',NULL,NULL,NULL,'0300-3328067',NULL,NULL,'W/6 Near Exchange Office KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2601,1,'2601','Rahil','',NULL,'4232',NULL,'Zafar Iqbal',NULL,NULL,NULL,'0300-3303887',NULL,NULL,'W/6 Near Exchange Office KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2602,1,'2602','Ishfaq ','',NULL,'4232',NULL,'Haji Moosa Khan',NULL,NULL,NULL,'0304-3180199',NULL,NULL,'W/6 Near Exchange Office KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2603,1,'2603','Rahil Ahmed ','',NULL,'4232',NULL,'Shabir Ahmed',NULL,NULL,NULL,'',NULL,NULL,'W/1 Factory Road  KMG',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2604,1,'2604','Mohammad Aslam Khan','',NULL,'4232',NULL,'AbduAllah Khan',NULL,NULL,NULL,'0333-2967206',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2605,1,'2605','Akber ALI','',NULL,'4232',NULL,' Inayat ALI ',NULL,NULL,NULL,'0331-2882841',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2606,1,'2606','Mohammad Junaid ','',NULL,'4232',NULL,'Mohammad Hassan ',NULL,NULL,NULL,'0301-3918591',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2607,1,'2607','Abdul Rehman ','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0300-2356255',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2608,1,'2608','Saeed Khan','',NULL,'4232',NULL,'Ayaaz Khan',NULL,NULL,NULL,'0332-1318510',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2609,1,'2609','Nisar Khan','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-3971532',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2610,1,'2610','Yameen Khan ','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-0284740',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2611,1,'2611','Ali Akhter ','',NULL,'4232',NULL,'Ashgar Khan',NULL,NULL,NULL,'0300-2218649',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2612,1,'2612','Ali Akram ','',NULL,'4232',NULL,'Ashgar Khan',NULL,NULL,NULL,'0307-3317797',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2613,1,'2613','Aslam Khan ','',NULL,'4232',NULL,'Ashgar Khan',NULL,NULL,NULL,'0301-2418513',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2614,1,'2614','Shabir Khan ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0305-2122266',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2615,1,'2615','Raffiq','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0306-8227511',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2616,1,'2616','Shafiq Ahmed','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-0350010',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2617,1,'2617','Mohammad Shahid ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0332-3905254',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2618,1,'2618','Mohammad Saleem ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-2451788',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2619,1,'2619','Mohammad Akram','',NULL,'4232',NULL,'Azam Khan',NULL,NULL,NULL,'0305-2643979',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2620,1,'2620','Mohammad Abid ','',NULL,'4232',NULL,'Azam Khan',NULL,NULL,NULL,'0307-3341450',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2621,1,'2621','Mohammad Ayoub ','',NULL,'4232',NULL,'Azam Khan',NULL,NULL,NULL,'0306-8205693',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2622,1,'2622','Mohammad Arshad ','',NULL,'4232',NULL,'Sher Mohammad Khan',NULL,NULL,NULL,'0305-3010210',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2623,1,'2623','Mohammad Sagheer ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2624,1,'2624','Mohammad Saleem ','',NULL,'4232',NULL,'Yamin Khan',NULL,NULL,NULL,'0331-2943950',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2625,1,'2625','Mohammad Umer ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0306-9193173',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2626,1,'2626','Shahzad ','',NULL,'4232',NULL,'Saleem Khan',NULL,NULL,NULL,'0331-2943950',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2627,1,'2627','Shabir ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0306-2361587',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2628,1,'2628','Mohammad Shakeel ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0300-3523140',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2629,1,'2629','Mohammad Siddiq','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0332-9606392',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2630,1,'2630','Ameer Hassan ','',NULL,'4232',NULL,'Hassan ',NULL,NULL,NULL,'0333-3233885',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2631,1,'2631','Salahuddin ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0301-3326085',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2632,1,'2632','Abdul Latif ','',NULL,'4232',NULL,'Karamat ',NULL,NULL,NULL,'0312-3541793',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2633,1,'2633','Nizam Khan ','',NULL,'4232',NULL,'Bahu Khan ',NULL,NULL,NULL,'0302-2387754',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2634,1,'2634','Tameel Khan ','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0331-7157460',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2635,1,'2635','Nawab Danish ','',NULL,'4232',NULL,'Shafqat ',NULL,NULL,NULL,'0333-3132506',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2636,1,'2636','Papu Younus ','',NULL,'4232',NULL,'Younus Khan',NULL,NULL,NULL,'0305-3901138',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2637,1,'2637','Aijaz Nabi','',NULL,'4232',NULL,'Feeroz Khan ',NULL,NULL,NULL,'0334-3838090',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2638,1,'2638','Mohammad Aslam Khan','',NULL,'4232',NULL,'Bahu Khan ',NULL,NULL,NULL,'0333-2539544',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2639,1,'2639','Mohammad Siddiq','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0300-3542544',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2640,1,'2640','Mohammad Nasir ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0332-9990940',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2641,1,'2641','Farooq Khan ','',NULL,'4232',NULL,'Shamsheer Ali Khan',NULL,NULL,NULL,'0333-5846895',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2642,1,'2642','Faisal ','',NULL,'4232',NULL,'Farooq Khan ',NULL,NULL,NULL,'0333-4941390',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2643,1,'2643','Allaudin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0333-2637318',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2644,1,'2644','Mohammad Tahir ','',NULL,'4232',NULL,'Liaqat Ali',NULL,NULL,NULL,'0307-3227294',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2645,1,'2645','Ali Hassan ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0333-2706828',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2646,1,'2646','Aijaz Nabi','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-3200680',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2647,1,'2647','Muslim ','',NULL,'4232',NULL,'Bahu Khan ',NULL,NULL,NULL,'0332-3535990',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2648,1,'2648','Habib Khan ','',NULL,'4232',NULL,'Nawab Khan',NULL,NULL,NULL,'0316-3133091',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2649,1,'2649','Shakeel ','',NULL,'4232',NULL,'Basheer Khan',NULL,NULL,NULL,'0300-4499074',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2650,1,'2650','Munaf ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'0301-3141870',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2651,1,'2651','Mohammad Jabbar ','',NULL,'4232',NULL,'Shamsuddin ',NULL,NULL,NULL,'0334-3595448',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2652,1,'2652','Mubarak ','',NULL,'4232',NULL,'Inayat Khan ',NULL,NULL,NULL,'0307-3395639',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2653,1,'2653','Younus ','',NULL,'4232',NULL,'Inayat Khan ',NULL,NULL,NULL,'0303-2073869',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2654,1,'2654','Nisar Ahmed ','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0300-3971532',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2655,1,'2655','Yameen Khan ','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0333-7380291',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2656,1,'2656','Muzamil ','',NULL,'4232',NULL,'Ayaz Khan',NULL,NULL,NULL,'0300-3323219',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2657,1,'2657','Rashid ','',NULL,'4232',NULL,'Fayaz Khan',NULL,NULL,NULL,'0300-3326626',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2658,1,'2658','Tasleem ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0333-2887646',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2659,1,'2659','Nisar Khan ','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'0300-3280199',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2660,1,'2660','Allauddin ','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2661,1,'2661','Shakeel ','',NULL,'4232',NULL,'Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2662,1,'2662','Waqas Ahmed ','',NULL,'4232',NULL,'Mehrudiin ',NULL,NULL,NULL,'0300-7156949',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2663,1,'2663','Riaz Ahmed','',NULL,'4232',NULL,'Mehrudiin ',NULL,NULL,NULL,'0300-3721709',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2664,1,'2664','Khadim','',NULL,'4232',NULL,'Qadar Khan',NULL,NULL,NULL,'0301-2961603',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2665,1,'2665','Abid ','',NULL,'4232',NULL,'Qadar Khan',NULL,NULL,NULL,'0301-3456503',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2666,1,'2666','Ashgar ','',NULL,'4232',NULL,'Inayat Ali',NULL,NULL,NULL,'0334-1247131',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2667,1,'2667','Akhter ','',NULL,'4232',NULL,'Sarwar Khan ',NULL,NULL,NULL,'0333-3037727',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2668,1,'2668','Arif Khan ','',NULL,'4232',NULL,'Haneef Khan',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2669,1,'2669','Jameel ','',NULL,'4232',NULL,'Munawer Khan ',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2670,1,'2670','Islam ','',NULL,'4232',NULL,'Nisar Khan',NULL,NULL,NULL,'0300-3971532',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2671,1,'2671','Shafqat Ali','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0308-3578335',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2672,1,'2672','Idress Khan ','',NULL,'4232',NULL,'Yousuf Khan ',NULL,NULL,NULL,'0301-3282395',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2673,1,'2673','Nadeem ','',NULL,'4232',NULL,'Nizam Khan ',NULL,NULL,NULL,'0302-2387754',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2674,1,'2674','Zubair ','',NULL,'4232',NULL,'Nizam Khan ',NULL,NULL,NULL,'0300-3469192',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2675,1,'2675','Latif ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2676,1,'2676','Rafiq ','',NULL,'4232',NULL,'Ramzan Khan ',NULL,NULL,NULL,'',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2677,1,'2677','Nisar Khan ','',NULL,'4232',NULL,'Ali Mohammad Khan ',NULL,NULL,NULL,'0300-3280199',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2678,1,'2678','Jewan Khan ','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0302-3908689',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2679,1,'2679','Siddiq ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0300-2281126',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2680,1,'2680','Navaid ','',NULL,'4232',NULL,'Shoukat Khan ',NULL,NULL,NULL,'0300-3309890',NULL,NULL,'Makkah Masjid Ward No 03',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2681,1,'2681','Nisar ','',NULL,'4232',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2682,1,'2682','Ikram ','',NULL,'4232',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'0301-3916627',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2683,1,'2683','Abdul Ghaffar ','',NULL,'4232',NULL,'Shamsuddin Khan ',NULL,NULL,NULL,'0302-3316564',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2684,1,'2684','Gulzar ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0303-2480906',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2685,1,'2685','Sattar ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0301-3340217',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2686,1,'2686','Shahid ','',NULL,'4232',NULL,'Abdul Hameed Khan ',NULL,NULL,NULL,'0302-3350607',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2687,1,'2687','Ghulam Mohammad ','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3916374',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2688,1,'2688','Zulfiqar','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3281326',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2689,1,'2689','Mohammad Imran','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0301-3246646',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2690,1,'2690','Eijaz Nabi ','',NULL,'4232',NULL,'Ghulam Nabi',NULL,NULL,NULL,'',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2691,1,'2691','Ali ','',NULL,'4232',NULL,'Habib Khan',NULL,NULL,NULL,'',NULL,NULL,'W/4 Raghar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2692,1,'2692','Allahudiin ','',NULL,'4232',NULL,'AbduAllah Khan',NULL,NULL,NULL,'0333-2229797',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2693,1,'2693','Faisal ','',NULL,'4232',NULL,'Farooq Khan ',NULL,NULL,NULL,'0333-2470686',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2694,1,'2694','Jamil ','',NULL,'4232',NULL,'Noor Khan',NULL,NULL,NULL,'0301-3621656',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2695,1,'2695','Tasleem Khan ','',NULL,'4232',NULL,'Hidayat Khan',NULL,NULL,NULL,'0332-2606130',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2696,1,'2696','Anas Rehman ','',NULL,'4232',NULL,'Abdul Rehman ',NULL,NULL,NULL,'0333-0224829',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2697,1,'2697','Salahuddin Khan ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0307-3109190',NULL,NULL,'W/3 Near Makka Masjid',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2698,1,'2698','Hanif ','',NULL,'4232',NULL,'MalAK sher Khan ',NULL,NULL,NULL,'0300-3317128',NULL,NULL,'G/B High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2699,1,'2699','Hassan ','',NULL,'4232',NULL,'Mohammad Asif Khan ',NULL,NULL,NULL,'0302-8979399',NULL,NULL,'G/B High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2700,1,'2700','Fiaz Khan ','',NULL,'4232',NULL,'Bhu Khan ',NULL,NULL,NULL,'0300-3015138',NULL,NULL,'G/B High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2701,1,'2701','Mohammad Rahil ','',NULL,'4232',NULL,'Riyasat Ali ',NULL,NULL,NULL,'0300-0581147',NULL,NULL,'G/B High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2702,1,'2702','Javaid ','',NULL,'4232',NULL,'Peer Mohammad Khan ',NULL,NULL,NULL,'0332-5508678',NULL,NULL,'G/B High School KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2703,1,'2703','Shamshair Khan ','',NULL,'4232',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0333-2835041',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2704,1,'2704','Nawab Khan','',NULL,'4232',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0301-3918249',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2705,1,'2705','Abdul Rafiq ','',NULL,'4232',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0306-3547038',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2706,1,'2706','Shahid ','',NULL,'4232',NULL,'Ghulam Mustafa Khan ',NULL,NULL,NULL,'0333-2958884',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2707,1,'2707','Ghulam Mohammad ','',NULL,'4232',NULL,'Dr Mohammad Usman ',NULL,NULL,NULL,'0301-3911689',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2708,1,'2708','Shahbaz Khan ','',NULL,'4232',NULL,'Mohammad Siddiq Khan ',NULL,NULL,NULL,'0302-3314913',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2709,1,'2709','Mohammad Nadeem ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0300-2491702',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2710,1,'2710','Aslam Khan ','',NULL,'4232',NULL,'Subhan Khan ',NULL,NULL,NULL,'0300-0282585',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2711,1,'2711','Mustafa Khan','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0333-2644280',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2712,1,'2712','Sikander Ali ','',NULL,'4232',NULL,'Ghulam Mohammad Khan ',NULL,NULL,NULL,'0303-2432469',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2713,1,'2713','Hanif Khan ','',NULL,'4232',NULL,'Ghani Khan ',NULL,NULL,NULL,'0307-3413212',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2714,1,'2714','Siddiq ','',NULL,'4232',NULL,'Ghani Khan ',NULL,NULL,NULL,'0301-3918234',NULL,NULL,'W/6 Juta Bazar KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2715,1,'2715','Zahid ','',NULL,'4232',NULL,'Shoukat Ali Khan ',NULL,NULL,NULL,'0332-3300368',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2716,1,'2716','Mohammad Iqbal ','',NULL,'4232',NULL,'Shair Mohammad ',NULL,NULL,NULL,'0301-3281298',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2717,1,'2717','Khalid ','',NULL,'4232',NULL,'Moosa Khan',NULL,NULL,NULL,'0300-2712605',NULL,NULL,'W/6 Near Old Sabzi Mandi KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2718,1,'2718',' Mohammad Yousuf','',NULL,'4232',NULL,'Inayat Khan ',NULL,NULL,NULL,'0304-8307735',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2719,1,'2719','Umer Khan ','',NULL,'4232',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0306-3542998',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2720,1,'2720','Ayaz Mehmood','',NULL,'4232',NULL,'Haji Mashooq ',NULL,NULL,NULL,'0300-3996390',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2721,1,'2721','Tahir ','',NULL,'4232',NULL,'Ghulam Rasool',NULL,NULL,NULL,'0301-3916620',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2722,1,'2722','Shahzad ','',NULL,'4232',NULL,'Shoakat Ali Khan ',NULL,NULL,NULL,'0334-2551808',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2723,1,'2723','Waseem ','',NULL,'4232',NULL,'Walli Mohammad Khan ',NULL,NULL,NULL,'0301-3281200',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2724,1,'2724','Mohammad Akber','',NULL,'4232',NULL,' Abdul Aziz Khan ',NULL,NULL,NULL,'0308-7410056',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2725,1,'2725','Mohammad Asif ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0306-3440410',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2726,1,'2726','Rashid Ahmed ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0305-8415612',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2727,1,'2727','Amjad Irshad ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0301-2521937',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2728,1,'2728',' Altaf ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0332-2837613',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2729,1,'2729','Irfan ','',NULL,'4232',NULL,'Rustam Khan',NULL,NULL,NULL,'0333-2957707',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2730,1,'2730','Talha Khan ','',NULL,'4232',NULL,'Nisar Khan',NULL,NULL,NULL,'0333-8283667',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2731,1,'2731','Younas Khan ','',NULL,'4232',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0333-2776753',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2732,1,'2732','Ibrahim Khan ','',NULL,'4232',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0333-3094210',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2733,1,'2733','Mohammad Naveed ','',NULL,'4232',NULL,'Altaf Hussain Khan ',NULL,NULL,NULL,'0333-8283668',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2734,1,'2734','Sattar Khan ','',NULL,'4232',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0301-3912264',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2735,1,'2735','Musharaf ','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,'',NULL,NULL,'W/6 High School Road kgm',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2736,1,'2736','Niaz Khan ','',NULL,'4232',NULL,'Ahmed Ali ',NULL,NULL,NULL,'0301-3540406',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2737,1,'2737','Abdul Sattar Khan','',NULL,'4232',NULL,'Mushtaq Khan ',NULL,NULL,NULL,'0307-2046386',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2738,1,'2738','Mohammad Irshad ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0301-3916017',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2739,1,'2739','Mehroz ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0300-6790103',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2740,1,'2740','Shafqiq ','',NULL,'4232',NULL,'Rafiq',NULL,NULL,NULL,'0346-2196353',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2741,1,'2741','Adil ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0333-7773590',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2742,1,'2742','Ghayour ','',NULL,'4232',NULL,'Ghani Khan ',NULL,NULL,NULL,'0308-2090372',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2743,1,'2743','Khalid Khan ','',NULL,'4232',NULL,'Jewan Khan ',NULL,NULL,NULL,'0336-3051546',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2744,1,'2744','Sabir ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2745,1,'2745','Meer Hassan ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'0308-3276452',NULL,NULL,'W/1 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2746,1,'2746','Alladin ','',NULL,'4232',NULL,'Jaffar Ali Khan',NULL,NULL,NULL,'0301-3642920',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2747,1,'2747','Maqsood Ali ','',NULL,'4232',NULL,'Chouto Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2748,1,'2748','Atif ','',NULL,'4232',NULL,'Ashiq Ali ',NULL,NULL,NULL,'0333-3320859',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2749,1,'2749','Sarwer ','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0344-3503144',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2750,1,'2750','Sulman ','',NULL,'4232',NULL,'Ali Mohammad ',NULL,NULL,NULL,'0333-7158358',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2751,1,'2751','Mohammad Iqbal Khan ','',NULL,'4232',NULL,'Faiz Mohammad Khan ',NULL,NULL,NULL,'0335-2021226',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2752,1,'2752','Mumtaz Khan ','',NULL,'4232',NULL,'Jewan Khan ',NULL,NULL,NULL,'0301-3911673',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2753,1,'2753','Waseem ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0308-3257419',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2754,1,'2754','Shakeel Ahmed ','',NULL,'4232',NULL,'Ashger Ali Khan ',NULL,NULL,NULL,'0333-1275327',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2755,1,'2755','Intezar ','',NULL,'4232',NULL,'Shabir Khan ',NULL,NULL,NULL,'0333-2980960',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2756,1,'2756','Irshad Ahmed ','',NULL,'4232',NULL,'Shabir Khan ',NULL,NULL,NULL,'0333-2617809',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2757,1,'2757','Fiyaz Ahmed','',NULL,'4232',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0301-3141680',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2758,1,'2758','Shoaib ','',NULL,'4232',NULL,'Ghulam Murtaza Khan ',NULL,NULL,NULL,'0316-3773218',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2759,1,'2759','Aftab ','',NULL,'4232',NULL,'Khadim Husain Khan ',NULL,NULL,NULL,'0300-0359411',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2760,1,'2760','Aijaz ','',NULL,'4232',NULL,'Aslam Khan ',NULL,NULL,NULL,'0300-3304576',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2761,1,'2761','Talib Husain ','',NULL,'4232',NULL,'Shamsher Khan ',NULL,NULL,NULL,'0302-4976361',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2762,1,'2762','Taiyab','',NULL,'4232',NULL,'Shamsher Khan ',NULL,NULL,NULL,'0302-2933763',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2763,1,'2763','Mohammad Aslam ','',NULL,'4232',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0300-3318044',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2764,1,'2764','Mohammad Ashraf ','',NULL,'4232',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0307-3439040',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2765,1,'2765','Mohammad Akram ','',NULL,'4232',NULL,'Abdul Shakoor Khan ',NULL,NULL,NULL,'0308-3526493',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2766,1,'2766','Shehbaz ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0301-3913813',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2767,1,'2767','Karamat ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0332-3207882',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2768,1,'2768','Intezar ','',NULL,'4232',NULL,'Mohammad Hussain Khan ',NULL,NULL,NULL,'0336-2266278',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2769,1,'2769','Allaudin Khan','',NULL,'4232',NULL,'Qasim Ali',NULL,NULL,NULL,'0303-2308183',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2770,1,'2770','Abid ','',NULL,'4232',NULL,'Taj Mohammad Khan ',NULL,NULL,NULL,'0302-2040305',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2771,1,'2771','Javaid ','',NULL,'4232',NULL,'Taj Mohammad Khan ',NULL,NULL,NULL,'0308-3006786',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2772,1,'2772','Mumtaz Khan ','',NULL,'4232',NULL,'Yaqoob Khan ',NULL,NULL,NULL,'0300-0351146',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2773,1,'2773','Aijaz ','',NULL,'4232',NULL,'Mumtaz Khan',NULL,NULL,NULL,'0301-2618465',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2774,1,'2774','Shahid ','',NULL,'4232',NULL,'Ashger Khan ',NULL,NULL,NULL,'0301-3642890',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2775,1,'2775','Mohammad Ali ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0308-3233055',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2776,1,'2776','Ahmed Ali ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-3929443',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2777,1,'2777','Sadaqat Ali ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0301-3154009',NULL,NULL,'W/5 By Pass Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2778,1,'2778','Arif ','',NULL,'4232',NULL,'Mehmood Khan',NULL,NULL,NULL,'0333-2983733',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2779,1,'2779','Riaz Ahmed','',NULL,'4232',NULL,'Inayat Ali Khan',NULL,NULL,NULL,'0334-2628205',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2780,1,'2780',' Liaqat Ali ','',NULL,'4232',NULL,'Mustafa Khan',NULL,NULL,NULL,'0332-2585456',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2781,1,'2781',' Khalid Mehmood ','',NULL,'4232',NULL,'Atta Mohd Khan ',NULL,NULL,NULL,'0308-3739330',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2782,1,'2782','Anwer ','',NULL,'4232',NULL,'Mohammad Ibrahim ',NULL,NULL,NULL,'0300-2589089',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2783,1,'2783','Hidayat Khan ','',NULL,'4232',NULL,'Mohammad Khan ',NULL,NULL,NULL,'0321-3022487',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2784,1,'2784','Shoaib ','',NULL,'4232',NULL,'Ismail Khan ',NULL,NULL,NULL,'0333-2993882',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2785,1,'2785','Mohammad Khalid ','',NULL,'4232',NULL,'Shoukat ',NULL,NULL,NULL,'0313-3943751',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2786,1,'2786','Waseem ','',NULL,'4232',NULL,'Mustaq Khan ',NULL,NULL,NULL,'0302-3920190',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2787,1,'2787','Qadeer Khan ','',NULL,'4232',NULL,'Jeewan Khan ',NULL,NULL,NULL,'0306-3502650',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2788,1,'2788','Navaid ','',NULL,'4232',NULL,'Jabbar Khan ',NULL,NULL,NULL,'0304-8080840',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2789,1,'2789','Aijaz ','',NULL,'4232',NULL,'Ashgar Khan ',NULL,NULL,NULL,'0333-4094601',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2790,1,'2790','Gul Hassan ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0333-3851090',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2791,1,'2791','Sikander Ali ','',NULL,'4232',NULL,'Mohammad Yousuf Khan ',NULL,NULL,NULL,'0333-2627900',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2792,1,'2792','Suhail Aziz ','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0332-8080190',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2793,1,'2793','Raheel Khan ','',NULL,'4232',NULL,'Abid Husain Khan ',NULL,NULL,NULL,'0336-0398757',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2794,1,'2794','Mehmood Khan ','',NULL,'4232',NULL,'Muraad Khan ',NULL,NULL,NULL,'0301-3146948',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2795,1,'2795','Qayoom ','',NULL,'4232',NULL,'Atta Mohd Khan ',NULL,NULL,NULL,'0333-5864500',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2796,1,'2796','Zahir Khan ','',NULL,'4232',NULL,'Kabir Khan ',NULL,NULL,NULL,'0333-2585920',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2797,1,'2797','Bashir Ahmed ','',NULL,'4232',NULL,'Ahmed Ali',NULL,NULL,NULL,'0302-3089832',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2798,1,'2798','Nadeem ','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2799,1,'2799','Raza ','',NULL,'4232',NULL,'AbduAllah',NULL,NULL,NULL,'0305-3401697',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2800,1,'2800','Mehraj ','',NULL,'4232',NULL,'Haji Riaz Khan ',NULL,NULL,NULL,'0306-3444583',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2801,1,'2801',' Shakeel Ahmed ','',NULL,'4232',NULL,'M.A Khan ',NULL,NULL,NULL,'0306-2197208',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2802,1,'2802','Imtiaz Ahmed ','',NULL,'4232',NULL,'M.A Khan ',NULL,NULL,NULL,'0311-8159016',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2803,1,'2803','Riaz Ahmed','',NULL,'4232',NULL,'Prof Noor Mohammad Khan ',NULL,NULL,NULL,'0302-2126343',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2804,1,'2804','Abid ','',NULL,'4232',NULL,'Usman Khan ',NULL,NULL,NULL,'0334-2551560',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2805,1,'2805','Mohammad Haneef ','',NULL,'4232',NULL,'Usman Khan ',NULL,NULL,NULL,'0302-2903869',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2806,1,'2806','Manzoor ','',NULL,'4232',NULL,'Dawood Ali Khan ',NULL,NULL,NULL,'0335-2019880',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2807,1,'2807','Ghulam Mustafa','',NULL,'4232',NULL,'N azar Mohammad Khan ',NULL,NULL,NULL,'0306-3444644',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2808,1,'2808','Mohammad Mustaq ','',NULL,'4232',NULL,'Dawood Ali Khan ',NULL,NULL,NULL,'0332-2458908',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2809,1,'2809','Mohammad Ayoub ','',NULL,'4232',NULL,'Mohammad Yasin Khan ',NULL,NULL,NULL,'0302-3098509',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2810,1,'2810','Abid Ali Khan ','',NULL,'4232',NULL,'Mohammad Shaffi Khan ',NULL,NULL,NULL,'0301-3288900',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2811,1,'2811','Aslam Khan ','',NULL,'4232',NULL,'Ghulam Nabi Khan',NULL,NULL,NULL,'0300-3341512',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2812,1,'2812','Asim Khan ','',NULL,'4232',NULL,'Abdul Sattar Khan',NULL,NULL,NULL,'0301-3284067',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2813,1,'2813','Ahmed ','',NULL,'4232',NULL,'Khalid Khan ',NULL,NULL,NULL,'0300-3565031',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2814,1,'2814','Javaid ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0300-3328290',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2815,1,'2815','Shakeel ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'0333-4094633',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2816,1,'2816','Raza Khan ','',NULL,'4232',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0335-3324821',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2817,1,'2817','Mraad Khan ','',NULL,'4232',NULL,'Nazeer Khan ',NULL,NULL,NULL,'0300-3614020',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2818,1,'2818','Yamin Khan ','',NULL,'4232',NULL,'Akht Ali Khan ',NULL,NULL,NULL,'0300-3614020',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2819,1,'2819','Ameer Hassan ','',NULL,'4232',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0300-3300411',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2820,1,'2820','Shahid ','',NULL,'4232',NULL,'Fateh Mohammad ',NULL,NULL,NULL,'0333-2774126',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2821,1,'2821','Mohammad Javaid Khan ','',NULL,'4232',NULL,'Mohammad Shafi Khan ',NULL,NULL,NULL,'0332-3891156',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2822,1,'2822','Ishfaq ','',NULL,'4232',NULL,'Siddiq Ali',NULL,NULL,NULL,'0334--0363706',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2823,1,'2823','Noshad ','',NULL,'4232',NULL,'Ismail Khan ',NULL,NULL,NULL,'0306-3090932',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2824,1,'2824','Nadeem ','',NULL,'4232',NULL,'Nizam Khan ',NULL,NULL,NULL,'0331-3300960',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2825,1,'2825','Navaid ','',NULL,'4232',NULL,'Nizam Khan ',NULL,NULL,NULL,'0333-2327123',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2826,1,'2826','Mohammad Ismail','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0307-3313378',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2827,1,'2827','Master Abdul Jabbar ','',NULL,'4232',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0306-8221001',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2828,1,'2828','Mohammad Arif ','',NULL,'4232',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0331-3201090',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2829,1,'2829','Allaudin Khan','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0304-3275550',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2830,1,'2830','AttauAllah ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0301-3148370',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2831,1,'2831','Ismail Khan ','',NULL,'4232',NULL,'Aziz Khan ',NULL,NULL,NULL,'0316-7027370',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2832,1,'2832','Aijaz Khan ','',NULL,'4232',NULL,'Wajid Khan ',NULL,NULL,NULL,'0332-5508284',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2833,1,'2833','Sattar Khan ','',NULL,'4232',NULL,'Umaid Khan ',NULL,NULL,NULL,'0300-3634749',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2834,1,'2834','Zulfiqar Ahmed ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0301-2254178',NULL,NULL,'W/5 Factory Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2835,1,'2835','Latif Khan ','',NULL,'4232',NULL,'Haneef Khan',NULL,NULL,NULL,'0333-2666155',NULL,NULL,'W/5 Factory Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2836,1,'2836','Mohammad Ilyas ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0336-3793408',NULL,NULL,'W/5 Factory Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2837,1,'2837','Abdul Raouf ','',NULL,'4232',NULL,'Haneef Khan ',NULL,NULL,NULL,'0333-0093300',NULL,NULL,'W/5 Factory Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2838,1,'2838','Intezar ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0306-4633698',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2839,1,'2839','Irfan ','',NULL,'4232',NULL,'Haji Jamsheed Khan ',NULL,NULL,NULL,'0332-8018028',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2840,1,'2840','Haj Irshad ','',NULL,'4232',NULL,'Qadir Khan',NULL,NULL,NULL,'',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2841,1,'2841','Shahid Khan ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0335-2522902',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2842,1,'2842','Shakeel Khan ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0307-3965341',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2843,1,'2843','Shafiq ','',NULL,'4232',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0306-3445344',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2844,1,'2844','Rafiq ','',NULL,'4232',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0332-3544800',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2845,1,'2845','Amir ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0333-2583988',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2846,1,'2846','Yasin ','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0334-2552566',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2847,1,'2847','Mohammad Anwer','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0331-3883097',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2848,1,'2848','Ashger Khan ','',NULL,'4232',NULL,'Shakoor Khan ',NULL,NULL,NULL,'0302-2034349',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2849,1,'2849','Mohammad Arif ','',NULL,'4232',NULL,'Noor Mohammad Khan',NULL,NULL,NULL,'0300-3930808',NULL,NULL,'W/3 Near Madni Masjid ',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2850,1,'2850','Khalil ','',NULL,'4232',NULL,'Assat Ali Khan',NULL,NULL,NULL,'0302-3973286',NULL,NULL,'New City KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2851,1,'2851','Moinudiin Khan ','',NULL,'4232',NULL,'Azimudddin Khan ',NULL,NULL,NULL,'0301-3916642',NULL,NULL,'New City KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2852,1,'2852','Khursheed ','',NULL,'4232',NULL,'Siddiq Khan ',NULL,NULL,NULL,'0331-3282292',NULL,NULL,'New City KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2853,1,'2853','Khalid Husain ','',NULL,'4232',NULL,'Dr Usman Khan ',NULL,NULL,NULL,'0334-2558196',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2854,1,'2854','Yaseen Khan ','',NULL,'4232',NULL,'Taaj Mohammad Khan',NULL,NULL,NULL,'0306-2030941',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2855,1,'2855','Toafiq ','',NULL,'4232',NULL,'Abdul Hameed Khan ',NULL,NULL,NULL,'0306-2450185',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2856,1,'2856','Abid ','',NULL,'4232',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0307-3349456',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2857,1,'2857','Majid ','',NULL,'4232',NULL,'Wahid Ali Khan ',NULL,NULL,NULL,'0300-2095855',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2858,1,'2858','Babu Ali ','',NULL,'4232',NULL,'Aleem Khan ',NULL,NULL,NULL,'0343-3477177',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2859,1,'2859','Akber ','',NULL,'4232',NULL,'Ellahi Bux ',NULL,NULL,NULL,'0305-8376937',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2860,1,'2860','Alam Khan ','',NULL,'4232',NULL,'Sikander Khan ',NULL,NULL,NULL,'0304-8454145',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2861,1,'2861','Shahid ','',NULL,'4232',NULL,'Hamid Khan ',NULL,NULL,NULL,'0307-3915755',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2862,1,'2862','Liaqat ','',NULL,'4232',NULL,'Dr Usman Khan ',NULL,NULL,NULL,'0332-9637056',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2863,1,'2863','Ishfaq ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0306-3748716',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2864,1,'2864','Mohammad Javaid Khan ','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0305-2745486',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2865,1,'2865',' Abdul Aziz ','',NULL,'4232',NULL,'Sonu Khan ',NULL,NULL,NULL,'0300-3311072',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2866,1,'2866','Abdul Razzaq ','',NULL,'4232',NULL,'Sonu Khan ',NULL,NULL,NULL,'0307-3186006',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2867,1,'2867','Tariq','',NULL,'4232',NULL,'Ibrahim Khan',NULL,NULL,NULL,'0303-4190615',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2868,1,'2868','Bilal ','',NULL,'4232',NULL,'Yasin Khan',NULL,NULL,NULL,'',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2869,1,'2869','Yahat Mehmood ','',NULL,'4232',NULL,'Hakeem Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2870,1,'2870','Mehmood Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2871,1,'2871','Zafar ','',NULL,'4232',NULL,'Niyamat Khan ',NULL,NULL,NULL,'0334-2215787',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2872,1,'2872','Shehriyar ','',NULL,'4232',NULL,'(Late) yousuf',NULL,NULL,NULL,'0336-2588685',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2873,1,'2873','Mohammad Ali ','',NULL,'4232',NULL,'Maqsood Ahmed ',NULL,NULL,NULL,'0321-2984059',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2874,1,'2874','Shehzad ','',NULL,'4232',NULL,'Mohammad Iqbal Khan ',NULL,NULL,NULL,'0333-2798291',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2875,1,'2875','Aslam Khan ','',NULL,'4232',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0306-0270226',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2876,1,'2876','Jahangeer ','',NULL,'4232',NULL,' Shair Ahmed ',NULL,NULL,NULL,'0333-3213239',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2877,1,'2877','Adnan ','',NULL,'4232',NULL,'Jamil Khan ',NULL,NULL,NULL,'0306-3507909',NULL,NULL,'W/5 Garib.a.bad Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2878,1,'2878','Mohammad Tahir ','',NULL,'4232',NULL,'Nasir Khan ',NULL,NULL,NULL,'0301-3280200',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2879,1,'2879','Qasim ','',NULL,'4232',NULL,'Shoukat ALI ',NULL,NULL,NULL,'0334-2971783',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2880,1,'2880','Shakeel Ahmed ','',NULL,'4232',NULL,'Shaffi Mohammad ',NULL,NULL,NULL,'0336-2515208',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2881,1,'2881','Tasleem ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0333-2988087',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2882,1,'2882','Ishtiaq','',NULL,'4232',NULL,' Ahmed Khan ',NULL,NULL,NULL,'0332-2717811',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2883,1,'2883','Khursheed ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0334-2624348',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2884,1,'2884','Abid ','',NULL,'4232',NULL,'Qasim Ali Khan',NULL,NULL,NULL,'0303-2824625',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2885,1,'2885','Khurshed ','',NULL,'4232',NULL,'Yamin Khan ',NULL,NULL,NULL,'0300-3982475',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2886,1,'2886','Mohammad Husain ','',NULL,'4232',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0333-0288050',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2887,1,'2887','Zeeshan ','',NULL,'4232',NULL,'Mehmood Khan ',NULL,NULL,NULL,'0335-3324841',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2888,1,'2888','Rashid Ali ','',NULL,'4232',NULL,'Shabir Khan ',NULL,NULL,NULL,'0336-3926013',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2889,1,'2889','Mohammad Saleem ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0300-3723559',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2890,1,'2890','Liaqat Ali ','',NULL,'4232',NULL,'Hidayat Ali',NULL,NULL,NULL,'0331-7017840',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2891,1,'2891','Nisar Ahmed ','',NULL,'4232',NULL,'Ghulab Khan ',NULL,NULL,NULL,'0343-6364094',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2892,1,'2892','Ziaurehman ','',NULL,'4232',NULL,'Abdul Rehman ',NULL,NULL,NULL,'0301-3916477',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2893,1,'2893','Shoaib Khan ','',NULL,'4232',NULL,'Kabir Khan ',NULL,NULL,NULL,'0331-1868857',NULL,NULL,'W/5 G/B High School Road KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2894,1,'2894','Arshad Khan ','',NULL,'4232',NULL,'Mustaque Khan ',NULL,NULL,NULL,'0302-3310321',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2895,1,'2895','Khalid Mehmood ','',NULL,'4232',NULL,'Haneef Khan ',NULL,NULL,NULL,'0300-3552418',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2896,1,'2896','Imran ','',NULL,'4232',NULL,'Umerdin ',NULL,NULL,NULL,'',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2897,1,'2897','Imtiaz Ahmed ','',NULL,'4232',NULL,'Fayaz Ahmed ',NULL,NULL,NULL,'0334-2030540',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2898,1,'2898','Abdul Sattar ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0301-3452880',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2899,1,'2899','SaifuAllah Khan ','',NULL,'4232',NULL,'Hidayat Khan ',NULL,NULL,NULL,'0302-3316245',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2900,1,'2900','Asif ','',NULL,'4232',NULL,'Farooq Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2901,1,'2901','Riaz Ahmed','',NULL,'4232',NULL,'Moinudiin Khan ',NULL,NULL,NULL,'0333-2502150',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2902,1,'2902','Anwer Ahmed ','',NULL,'4232',NULL,'Munawer Ali',NULL,NULL,NULL,'0306-8260225',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2903,1,'2903','Zulfiqar ','',NULL,'4232',NULL,'Mumtaaz Khan',NULL,NULL,NULL,'0332-2643966',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2904,1,'2904','Mohammad Aslam ','',NULL,'4232',NULL,'Abdul Aziz Khan ',NULL,NULL,NULL,'0341-6590500',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2905,1,'2905','Mohammad Zafar ','',NULL,'4232',NULL,'Abdul Aziz Khan ',NULL,NULL,NULL,'0301-3850519',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2906,1,'2906','Shoukat Ali ','',NULL,'4232',NULL,'Haji Khaju Khan ',NULL,NULL,NULL,'0332-3905374',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2907,1,'2907','Akeel Ahmed ','',NULL,'4232',NULL,'Mohammad Ali Khan ',NULL,NULL,NULL,'0300-3013602',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2908,1,'2908','Riasat ','',NULL,'4232',NULL,'Musharaf Ali ',NULL,NULL,NULL,'0302-3091173',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2909,1,'2909','Latif Khan ','',NULL,'4232',NULL,'Haneef Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2910,1,'2910','Mohammad Saleem ','',NULL,'4232',NULL,'Abbas Ali',NULL,NULL,NULL,'0300-3737990',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2911,1,'2911','Abdul Rauf Abid','',NULL,'4232',NULL,'Abdul Razaq Khan ',NULL,NULL,NULL,'0335-2024335',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2912,1,'2912','Ali Hassan ','',NULL,'4232',NULL,'Bashir Khan ',NULL,NULL,NULL,'0333-2629325',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2913,1,'2913','Amjad','',NULL,'4232',NULL,'Majeed Khan ',NULL,NULL,NULL,'0301-3154158',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2914,1,'2914','Umar Affan ','',NULL,'4232',NULL,'Iqbal Khan',NULL,NULL,NULL,'0333-6649827',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2915,1,'2915','Rizwan ','',NULL,'4232',NULL,'Abdul Razaq Khan ',NULL,NULL,NULL,'0304-8441602',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2916,1,'2916','Himayat Ali ','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0336-2097001',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2917,1,'2917','Sohail ','',NULL,'4232',NULL,'Riaz Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/4 Lahar Para KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2918,1,'2918','Shakeel ','',NULL,'4232',NULL,'Shaffi Mohammad ',NULL,NULL,NULL,'0321-2038676',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2919,1,'2919','Mohammad Aslam ','',NULL,'4232',NULL,'Ghulam Mustafa ',NULL,NULL,NULL,'0308-2535417',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2920,1,'2920','Mohammad Naveed ','',NULL,'4232',NULL,'Mionudiin ',NULL,NULL,NULL,'0312-3447400',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2921,1,'2921','Mohammad Imran ','',NULL,'4232',NULL,'Manzoor Ahmed ',NULL,NULL,NULL,'0331-3154468',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2922,1,'2922','(Late)Mehtab Ahmed ','',NULL,'4232',NULL,'Sanwat Khan ',NULL,NULL,NULL,'0308-8258640',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2923,1,'2923','Intezar Khan ','',NULL,'4232',NULL,'Alimudiin ',NULL,NULL,NULL,'0301-3642882',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2924,1,'2924','Javaid ','',NULL,'4232',NULL,'Ramzan Khan ',NULL,NULL,NULL,'0331-3803677',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2925,1,'2925','Ali Ashger ','',NULL,'4232',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0315-3095230',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2926,1,'2926','Hamid Khan ','',NULL,'4232',NULL,'Allaudin Khan',NULL,NULL,NULL,'0303-3118963',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2927,1,'2927','Irfan ','',NULL,'4232',NULL,'Sultan Ahmed ',NULL,NULL,NULL,'0331-4592851',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2928,1,'2928','Abdul Aziz Khan ','',NULL,'4232',NULL,'Ashger Ali Khan ',NULL,NULL,NULL,'0300-8170853',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2929,1,'2929','Abid Ali Khan ','',NULL,'4232',NULL,'Mustafa Khan',NULL,NULL,NULL,'0333-2958883',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2930,1,'2930','Babu Abdul Malik ','',NULL,'4232',NULL,'Haji Sufi Jaan ',NULL,NULL,NULL,'0301-2790862',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2931,1,'2931','Rashid Ahmed ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0301-3916375',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2932,1,'2932','Khurseed ','',NULL,'4232',NULL,'Hakim Ali Khan ',NULL,NULL,NULL,'0334-2624348',NULL,NULL,'W/2 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2933,1,'2933','Yasin Khan ','',NULL,'4232',NULL,'Ahmed Ali Khan ',NULL,NULL,NULL,'0307-3074449',NULL,NULL,'W/3 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2934,1,'2934','Aslam Khan ','',NULL,'4232',NULL,'Nazar Mohammad Khan',NULL,NULL,NULL,'0313-3802060',NULL,NULL,'W/3 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2935,1,'2935','Shakeel ','',NULL,'4232',NULL,'Mumtaz Ali Khan ',NULL,NULL,NULL,'0305-3154798',NULL,NULL,'W/3 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2936,1,'2936','Farooq ','',NULL,'4232',NULL,'Hashim Ali Khan ',NULL,NULL,NULL,'0331-2841001',NULL,NULL,'W/3 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2937,1,'2937','Mohammad Liaqat ','',NULL,'4232',NULL,'Hidayat Ali Khan ',NULL,NULL,NULL,'',NULL,NULL,'W/3 Kai Khani Mohalla KGM',NULL,'','Sindh','KGM',NULL,NULL,NULL),
(2938,1,'2938','Haji Muhammad Ashraf','',NULL,'4232',NULL,'Muhammad Asif',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2939,1,'2939','Muhammad  Sohail ','',NULL,'4232',NULL,' Muhammad Ishtiaq Khan',NULL,NULL,NULL,'0334-2051179',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2940,1,'2940','Saeed Ahmed ','',NULL,'4232',NULL,'Muhammad Sadeeq',NULL,NULL,NULL,'0302-2223395',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2941,1,'2941','Ateeq Ahmed ','',NULL,'4232',NULL,'Muhammad Rafique',NULL,NULL,NULL,'0300-8378688',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2942,1,'2942','Abdul Haq','',NULL,'4232',NULL,' Munzoor Ahmed',NULL,NULL,NULL,'0301-3593232',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2943,1,'2943','Saeed Akhter','',NULL,'4232',NULL,'Muhammad Owais',NULL,NULL,NULL,'0311-1801311',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2944,1,'2944','Molana Manzoor Ahmed Sabri','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0302-4343653',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2945,1,'2945','Asad kk','',NULL,'4232',NULL,'Abdul Sattar ',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2946,1,'2946','Faheem Uddin','',NULL,'4232',NULL,'Basheer Ahmed ',NULL,NULL,NULL,'0305-3493035',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2947,1,'2947','Muhammad Irfan','',NULL,'4232',NULL,'Umer Daraz',NULL,NULL,NULL,'0308-3054134',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2948,1,'2948','Muhammad Jameel','',NULL,'4232',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0303-3016636',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2949,1,'2949','Muhammad Khallid','',NULL,'4232',NULL,'Muhammad Haneef',NULL,NULL,NULL,'0301-3602123',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2950,1,'2950','Ismail ','',NULL,'4232',NULL,'Muhammad Asfaaq',NULL,NULL,NULL,'0300-7914874',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2951,1,'2951','Sajid Ali','',NULL,'4232',NULL,'Mubarak Ali',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2952,1,'2952','Muhammad Irfan Babu','',NULL,'4232',NULL,'Muhammad Shareef',NULL,NULL,NULL,'0343-3943710',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2953,1,'2953','Muhammad Murtaza','',NULL,'4232',NULL,'Ghulam Mustafa',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2954,1,'2954','Muhammad Raza','',NULL,'4232',NULL,'Ghulam Mustafa',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2955,1,'2955','Muhammad Shafiq','',NULL,'4232',NULL,'Muhammad Rafique',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2956,1,'2956','Anwer Shair','',NULL,'4232',NULL,'Abdul Rehman',NULL,NULL,NULL,'0311-3025247',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2957,1,'2957','Muhammad Akram','',NULL,'4232',NULL,'Muhammad Luqman',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2958,1,'2958','Sajid Ali','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2959,1,'2959','Muhammad Shakir','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2960,1,'2960','Ameer Ali','',NULL,'4232',NULL,'Ameen kk',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2961,1,'2961','Babar','',NULL,'4232',NULL,'Muhammad Younus',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2962,1,'2962','Muhammad Akram','',NULL,'4232',NULL,'Yaqoob Ali',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2963,1,'2963','Muhammad Shahid','',NULL,'4232',NULL,'Muhammad Owais',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2964,1,'2964','Shamshad Ali','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,' ',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2965,1,'2965','Liaqat Ali ','',NULL,'4232',NULL,'Mashook  Ali',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2966,1,'2966','Muhammad Naem','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,'0301-3563709',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2967,1,'2967','Muhammad Nadeem','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2968,1,'2968','Muhammad Waseem','',NULL,'4232',NULL,'Ashiq Ali Khan',NULL,NULL,NULL,NULL,NULL,NULL,'Hyd',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2969,1,'2969','Muhammad Aslam','',NULL,'4232',NULL,'Muhammad Ishaaq',NULL,NULL,NULL,NULL,NULL,NULL,'Matli',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2970,1,'2970','Sakhawat Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2971,1,'2971','Ibaad Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2972,1,'2972','Muhammad Ayaz','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'',NULL,NULL,'Ghareeb Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2973,1,'2973','Muhammad Majid ','',NULL,'4232',NULL,'Sharafat Ali',NULL,NULL,NULL,'',NULL,NULL,'Gull Mohd Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2974,1,'2974','Sharafat Ali','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2975,1,'2975','Fareed Ahmed ','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2976,1,'2976','Haji Rizwan Ahmed ','',NULL,'4232',NULL,'Haji Nisar Ahmed',NULL,NULL,NULL,'0300-8379166',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2977,1,'2977','Muhammad Aslam','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0302-3039894',NULL,NULL,'Gulistan Khursheed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2978,1,'2978','Haji Muhammad Iqbal','',NULL,'4232',NULL,'Ashiq Ali',NULL,NULL,NULL,'0331-9833320',NULL,NULL,'Okat Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2979,1,'2979','Himayat Ali Khan','',NULL,'4232',NULL,'-',NULL,NULL,NULL,'0304-3814871',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2980,1,'2980','Muhammad Shmeem','',NULL,'4232',NULL,'Ashiq Ali',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2981,1,'2981','Muhammad Farooq','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0301-3214329',NULL,NULL,'Gulistan Khursheed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2982,1,'2982','Doc Intekhaab Ali','',NULL,'4232',NULL,'Khursheed Ali',NULL,NULL,NULL,'0300-30536687',NULL,NULL,'Gulistan Khursheed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2983,1,'2983','Asad','',NULL,'4232',NULL,'Muhammad Zubair',NULL,NULL,NULL,'0301-3576240',NULL,NULL,'Okat Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2984,1,'2984','Shahid Muhammad ','',NULL,'4232',NULL,'Shafqat Ali',NULL,NULL,NULL,'0300-9296824',NULL,NULL,'Okat Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2985,1,'2985','Doc Ashraf','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'0300-3799832',NULL,NULL,'-',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2986,1,'2986','Muhammad Zahid ','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-3307766',NULL,NULL,'-',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2987,1,'2987','Muhammad Tariq','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-3303307',NULL,NULL,'-',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2988,1,'2988','Muhammad Rafique','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0300-3303308',NULL,NULL,'Fatah Poor Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2989,1,'2989','Muhammad Shareef','',NULL,'4232',NULL,'Muhammad Hanif',NULL,NULL,NULL,'0306-2002365',NULL,NULL,'Fatah Poor Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2990,1,'2990','Abdul Haq','',NULL,'4232',NULL,'Ashiq',NULL,NULL,NULL,'0302-3006116',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2991,1,'2991','Sharafat Ali ','',NULL,'4232',NULL,'Ashiq',NULL,NULL,NULL,'',NULL,NULL,'-',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2992,1,'2992','Ahmed Saeed','',NULL,'4232',NULL,'Muhammad Ayub',NULL,NULL,NULL,'0333-2525035',NULL,NULL,'Ahsan Khan Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2993,1,'2993','Muhammad Azfar','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0300-8371840',NULL,NULL,'Okat Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2994,1,'2994','Raja  Muhammad Naseem','',NULL,'4232',NULL,'Muhammad Saleem',NULL,NULL,NULL,'0300-3056583',NULL,NULL,'Dhak Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2995,1,'2995','Liaqat Ali ','',NULL,'4232',NULL,'Mubarak Ali',NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2996,1,'2996','Abid Islam','',NULL,'4232',NULL,'Muhammad Khan',NULL,NULL,NULL,'0300-9377833',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2997,1,'2997','Abid Ali','',NULL,'4232',NULL,'Muhammad Iqbal',NULL,NULL,NULL,'0336-3406548',NULL,NULL,'-',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2998,1,'2998','Muhammad Azeem','',NULL,'4232',NULL,'Haji Mubarak Ali',NULL,NULL,NULL,'0333-2806682',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(2999,1,'2999','Muhammad Ronaq','',NULL,'4232',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3000,1,'3000','Muhammadd Naeem','',NULL,'4232',NULL,'Ashiq Ali',NULL,NULL,NULL,NULL,NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3001,1,'3001','Hamid ','',NULL,'4232',NULL,'Toheed Khan',NULL,NULL,NULL,NULL,NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3002,1,'3002','Aurangzaib','',NULL,'4232',NULL,'Abdul Rasheed',NULL,NULL,NULL,'0346-3818762',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3003,1,'3003','Fazal','',NULL,'4232',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3004,1,'3004','Muhammad Ndeem','',NULL,'4232',NULL,'Mohammad Aleem ',NULL,NULL,NULL,'0312-3013980',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3005,1,'3005','Muhammad Aleem','',NULL,'4232',NULL,'Haji Muqarrib Ali',NULL,NULL,NULL,'0300-3247218',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3006,1,'3006','Aftaab Ali ','',NULL,'4232',NULL,'Shoukat Ali',NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3007,1,'3007','Mohammad Iqbal ','',NULL,'4232',NULL,'Mashooq Ali',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3008,1,'3008','Mohammad Akram','',NULL,'4232',NULL,'Mohammad Basheer',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3009,1,'3009','Waheed Ali ','',NULL,'4232',NULL,'Zahoor Ali',NULL,NULL,NULL,'3073073174',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3010,1,'3010','Mohammad Aslam ','',NULL,'4232',NULL,' Mohammad Basheer',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3011,1,'3011','Mohammad Ashraf','',NULL,'4232',NULL,'Mohammad Basheer',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3012,1,'3012','Sharafat Ali ','',NULL,'4232',NULL,'Mohammad Haneef',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3013,1,'3013','Jaweed ','',NULL,'4232',NULL,'Mohammad Iqbal',NULL,NULL,NULL,'303.338381',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3014,1,'3014','Ibad  Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3015,1,'3015','Fareed Ahmed ','',NULL,'4232',NULL,'Mohammad Hashim',NULL,NULL,NULL,'3083925476',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3016,1,'3016','Mohammad Liaqat','',NULL,'4232',NULL,'Mohammad Haneef',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3017,1,'3017','Liaqat Ali ','',NULL,'4232',NULL,'Mashooq Ali',NULL,NULL,NULL,'303.0356087',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3018,1,'3018','Sakhawat ','',NULL,'4232',NULL,'Mohammad Haneef',NULL,NULL,NULL,'301.3590174',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3019,1,'3019','Mukaram ','',NULL,'4232',NULL,'Sardar Ali',NULL,NULL,NULL,'3013594934',NULL,NULL,'',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3020,1,'3020','Haji Rizwan KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'334.8379166',NULL,NULL,'Bag Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3021,1,'3021','Haji Adnan KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bag Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3022,1,'3022','Mohammad Aslam KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'302.3039894',NULL,NULL,'Gulistan .e.Khurseed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3023,1,'3023','Haji Mohammad Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'331.983332',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3024,1,'3024','Himayat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'304.3814871',NULL,NULL,'Bag Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3025,1,'3025','Mohammad Shamim','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bag Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3026,1,'3026','Mohammad Farooq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3214329',NULL,NULL,'Gulistan.e.khurseed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3027,1,'3027','Dr Intikhaab ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3053668',NULL,NULL,'Gulistan.e.khurseed',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3028,1,'3028','Shahid Mehmood','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.9296824',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3029,1,'3029','DRr Ashraf Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3799832',NULL,NULL,'Near Irrigation Office',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3030,1,'3030','Mohammad Asad Zubair','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.357624',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3031,1,'3031','Mohammad Zahid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3307766',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3032,1,'3032','Mohammad Tariq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3303307',NULL,NULL,'Near Girlz Colleage',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3033,1,'3033','Mohammad Rafique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3303308',NULL,NULL,'Fateh Pur Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3034,1,'3034','Mohammad Shhareef','',NULL,'4232',NULL,'',NULL,NULL,NULL,'306.2002365',NULL,NULL,'Fateh Pur Mohalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3035,1,'3035','Abdul Haq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'302.3006116',NULL,NULL,'Near Girlz Colleage',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3036,1,'3036','Sharafat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Ahsan Shah Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3037,1,'3037','Ahmed Saeed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'333.2525035',NULL,NULL,'Ahsan Shah Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3038,1,'3038','Mohammad Ashgar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.837184',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3039,1,'3039','Rja Naeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3615307',NULL,NULL,'Dhak Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3040,1,'3040','Raja Faisal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3056583',NULL,NULL,'Dhak Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3041,1,'3041','Liaqat Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'302.7539455',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3042,1,'3042','Abid Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'336.3406548',NULL,NULL,'Near Girlz Colleage',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3043,1,'3043','Abdul Salam','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.9377833',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3044,1,'3044','Mohammad Azeem KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'333.2806682',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3045,1,'3045','Mohammad Naeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3046,1,'3046','Hamid ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3047,1,'3047','Orangzeb','',NULL,'4232',NULL,'',NULL,NULL,NULL,'346.3818762',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3048,1,'3048','Fazal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3049,1,'3049','Mohammad Nadeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'312.301398',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3050,1,'3050','Mohammad Aleem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.3247218',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3051,1,'3051','Aftab Aalam ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Old Fish Market',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3052,1,'3052','Haji Mohammad Ashraf','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3053,1,'3053','Mohammad Sohail','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3342051179',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3054,1,'3054','Saeed Ahmed ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'302.2223395',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3055,1,'3055','Atiq Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.8378688',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3056,1,'3056','Abdul Haq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3539232',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3057,1,'3057','Saeed Akhter','',NULL,'4232',NULL,'',NULL,NULL,NULL,'311.1801311',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3058,1,'3058','Manzoor Ahmed Sabri','',NULL,'4232',NULL,'',NULL,NULL,NULL,'302.4343653',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3059,1,'3059','Asad KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3060,1,'3060','Faheem Uddin','',NULL,'4232',NULL,'',NULL,NULL,NULL,'305.3493035',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3061,1,'3061','Mohammad Irfan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'308.3054134',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3062,1,'3062','Junaid Haneef','',NULL,'4232',NULL,'',NULL,NULL,NULL,'303.3016636',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3063,1,'3063','Khalid Haneef','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3602123',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3064,1,'3064','Ismail Ishfaq','',NULL,'4232',NULL,'',NULL,NULL,NULL,'300.7914874',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3065,1,'3065','Sajid Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3066,1,'3066','Mohammad Irfan Babo','',NULL,'4232',NULL,'',NULL,NULL,NULL,'343.394371',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3067,1,'3067','Mohammad Murtaza','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3068,1,'3068','Mohammad Raza','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3069,1,'3069','Mohammad Shafique','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3070,1,'3070','Anwer Shair','',NULL,'4232',NULL,'',NULL,NULL,NULL,'311.3025247',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3071,1,'3071','Mohammad Luqman ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3072,1,'3072','Sajid Saleem ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3073,1,'3073','Shakir Saleem ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3074,1,'3074','Baber Younus','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3075,1,'3075','Mohammad Shahid','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3076,1,'3076','Shamshad Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3598642',NULL,NULL,'KK Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3077,1,'3077','Liaqat Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Bagh Muhalla',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3078,1,'3078','Mohammad Naeem ','',NULL,'4232',NULL,'Ashiq Ali',NULL,NULL,NULL,'301.3563709',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3079,1,'3079','Mohammad Waseem ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3080,1,'3080','Mohammad Nadeem','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3081,1,'3081','Mohammad Aslam ','',NULL,'4232',NULL,'Ishaaq',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3082,1,'3082','Mohammad Islam','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'kk Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3083,1,'3083','Ibaad Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3084,1,'3084','Mohammad Ayaz','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Gareeb.a.bad',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3085,1,'3085','Sharafat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3086,1,'3086','Sakhawat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'301.3590174',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3087,1,'3087','Majid Ali','',NULL,'4232',NULL,'Sharafat Ali',NULL,NULL,NULL,'',NULL,NULL,'Gull Mohd Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3088,1,'3088','Mohammad Fareed Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Saleem Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3089,1,'3089','Mohammad Iqbal ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'315.1319809',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3090,1,'3090',' Mohammad Akram ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3091,1,'3091','Mohammad Aslam Basheer','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3092,1,'3092','Mohammad Ashraf','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3093,1,'3093','Waheed Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'307.3073174',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3094,1,'3094','Mohammad Jaweed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'303.338381',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3095,1,'3095','Mukraam ','',NULL,'4232',NULL,'Sardar Ali',NULL,NULL,NULL,'301.3594934',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3096,1,'3096','Liaqat Ali ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'303.0356087',NULL,NULL,'Jameel Colony',NULL,'','Sindh','Matli',NULL,NULL,NULL),
(3097,1,'3097','Ali Hassan ','',NULL,'4232',NULL,' Mehboob Ali Kahn ',NULL,NULL,NULL,'0331-2941761',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3098,1,'3098','Khalid ali ','',NULL,'4232',NULL,' Akbar Ali ',NULL,NULL,NULL,'0334-2802128',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3099,1,'3099','Turab Ali Khan ','',NULL,'4232',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0300-9318836',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3100,1,'3100','Riasat Ali ','',NULL,'4232',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0334-2558913',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3101,1,'3101','Javaid Hussain ','',NULL,'4232',NULL,' Mohammad Yousaf ',NULL,NULL,NULL,'0302-5155552',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3102,1,'3102','Shakir Ali ','',NULL,'4232',NULL,' Nasir Ali ',NULL,NULL,NULL,'0306-2202508',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3103,1,'3103','Majid Ali ','',NULL,'4232',NULL,' Nasir ali',NULL,NULL,NULL,'0333-8312236',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3104,1,'3104','Sajid Ali ','',NULL,'4232',NULL,' Nasir Ali ',NULL,NULL,NULL,'0333-0285359',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3105,1,'3105','Mohammad Farooque ','',NULL,'4232',NULL,' Turab Ali ',NULL,NULL,NULL,'0333-0285359',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3106,1,'3106','Mohammad Ilyas ','',NULL,'4232',NULL,' Qasim Ali Khan',NULL,NULL,NULL,'0306-3445641',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3107,1,'3107','Mohammad Zubair ','',NULL,'4232',NULL,' Sabir Ali Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3108,1,'3108','Irfan Ali ','',NULL,'4232',NULL,' Mohammad Usman ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3109,1,'3109','Thakur Nisar Ahmed ','',NULL,'4232',NULL,' Niaz Khan ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3110,1,'3110','Nisar Ahmed ','',NULL,'4232',NULL,' Wajid ali ',NULL,NULL,NULL,'0308-3547982',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3111,1,'3111','Mohammad Shafique (Nadra) ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'0302-3317312',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3112,1,'3112','Mohammad Waseem ','',NULL,'4232',NULL,' Mohammad Yousaf ',NULL,NULL,NULL,'0307-8226647',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3113,1,'3113','Zahid Hussain ','',NULL,'4232',NULL,' Mumtaz ali ',NULL,NULL,NULL,'0303-3559571',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3114,1,'3114','Yasmin ','',NULL,'4232',NULL,' Risaldar Mehmood Ali ',NULL,NULL,NULL,'0308-3906532',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3115,1,'3115','Sajid Ali ','',NULL,'4232',NULL,' Umaid Ali (Late) ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3116,1,'3116','Basit ali ','',NULL,'4232',NULL,' Mehboob Ali ',NULL,NULL,NULL,'0306-5913200',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3117,1,'3117','Mansoor Ahmed ','',NULL,'4232',NULL,' Mehmood Ali Khan',NULL,NULL,NULL,'0333-3113724',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3118,1,'3118','Khurram Ayoub ','',NULL,'4232',NULL,' Mohammad Ayoub',NULL,NULL,NULL,'0302-7770314',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3119,1,'3119','Zahid Ali ','',NULL,'4232',NULL,' Arshad Ali ',NULL,NULL,NULL,'0333-2751519',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3120,1,'3120','Wilayat Ali Khan ','',NULL,'4232',NULL,' Arshad Ali',NULL,NULL,NULL,'0336-2377150',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3121,1,'3121','Shamsher Ali Khan ','',NULL,'4232',NULL,' Hidayat Ali Khan ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3122,1,'3122','Adil Noor ','',NULL,'4232',NULL,' Mansab Ali Khan',NULL,NULL,NULL,'0331-3731151',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3123,1,'3123','Mohammad Tariq ','',NULL,'4232',NULL,' Mohammad Idrees ',NULL,NULL,NULL,'0340-4976420',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3124,1,'3124','Javaid Shoukat ','',NULL,'4232',NULL,' Shoukat Ali ',NULL,NULL,NULL,'0333-3056319',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3125,1,'3125','Abdul Hafeez ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'0333-3263744',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3126,1,'3126','Faraz Ali ','',NULL,'4232',NULL,' Tahir Ali ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3127,1,'3127','Dr. Mohammad Sami ','',NULL,'4232',NULL,' Jameel Ahmed',NULL,NULL,NULL,'0334-8834013',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3128,1,'3128','Master Waseem Ahmed ','',NULL,'4232',NULL,' Shamshad Ali (Late)',NULL,NULL,NULL,'0333-8813506',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3129,1,'3129','Khalid Ali ','',NULL,'4232',NULL,' Shoukat Ali',NULL,NULL,NULL,'0340-3603190',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3130,1,'3130','Khalil Ahmed ','',NULL,'4232',NULL,' Yaseen Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3131,1,'3131','Mohammad Younas ','',NULL,'4232',NULL,' Mohammad Ilyas (Khan Ji)  ',NULL,NULL,NULL,'0308-3529047',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3132,1,'3132','Nadeem Ali ','',NULL,'4232',NULL,' Aziz Ali',NULL,NULL,NULL,'0306-220041',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3133,1,'3133','Shamshair Ali ','',NULL,'4232',NULL,' Jaodi Khan',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3134,1,'3134','Ghulam Dastagir ','',NULL,'4232',NULL,' Abdul Jabar ',NULL,NULL,NULL,'0306-3319709',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3135,1,'3135','Mohammad Mustafa ','',NULL,'4232',NULL,' Fajar Ali ',NULL,NULL,NULL,'0346-2708653',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3136,1,'3136','Siddique Urf Mohammad Ali ','',NULL,'4232',NULL,' Fajar Ali',NULL,NULL,NULL,'0305-3799679',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3137,1,'3137','Nabi Sher ','',NULL,'4232',NULL,' Jamil Khan',NULL,NULL,NULL,'0308-3055081',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3138,1,'3138','Abdul Rasheed ','',NULL,'4232',NULL,' Fajar Ali ',NULL,NULL,NULL,'0304-3234117',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3139,1,'3139','Dr. Shamshad Ali ','',NULL,'4232',NULL,' Manhun Khan',NULL,NULL,NULL,'0333-3265118',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3140,1,'3140','Master Aziz Ahmed ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'0334-3352857',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3141,1,'3141','Kokab Ali ','',NULL,'4232',NULL,' Shabir Ahmed ',NULL,NULL,NULL,'0336-3438531',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3142,1,'3142','Mubashar ','',NULL,'4232',NULL,' Aziz Ahmed',NULL,NULL,NULL,'0300-3325094',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3143,1,'3143','Nasir Ali ','',NULL,'4232',NULL,' Adul Hameed',NULL,NULL,NULL,'0336-3438531',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3144,1,'3144','Abdul Qayoom ','',NULL,'4232',NULL,' Hafeez Khan',NULL,NULL,NULL,'3332970697',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3145,1,'3145','Abdul Ghaffar ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3146,1,'3146','Mohammad Saleem (Mangal) ','',NULL,'4232',NULL,' ',NULL,NULL,NULL,'3024839597',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3147,1,'3147','M. Jamil ','',NULL,'4232',NULL,' Abbas Ali',NULL,NULL,NULL,'0302-2537225',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3148,1,'3148','Mohammad Farooq ','',NULL,'4232',NULL,' Seth Nasir Ali (Late) ',NULL,NULL,NULL,'0300-3018265',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3149,1,'3149','Seth Shoukat Ali ','',NULL,'4232',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'0306-8263822',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3150,1,'3150','Haji Shamshad ','',NULL,'4232',NULL,' Akbar Ali',NULL,NULL,NULL,'0302-3063925',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3151,1,'3151','Mohammad Siddique ','',NULL,'4232',NULL,' (Khan Ji) ',NULL,NULL,NULL,'0307-3413688',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3152,1,'3152','Mohammad Amin ','',NULL,'4232',NULL,' Noor Mohammad',NULL,NULL,NULL,'0310-0335828',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3153,1,'3153','Imran ','',NULL,'4232',NULL,' Mohammad Iqbal',NULL,NULL,NULL,'0301-3342148',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3154,1,'3154','Yaqoob Ali Khan ','',NULL,'4232',NULL,' Mohammad Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3155,1,'3155','Imran Ali ','',NULL,'4232',NULL,' Imdad Ali',NULL,NULL,NULL,'3003326281',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3156,1,'3156','Umaid Ali ','',NULL,'4232',NULL,' Yousaf Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3157,1,'3157','Mohammad Akram ','',NULL,'4232',NULL,' Sarwar Ali',NULL,NULL,NULL,'0346-3723215',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3158,1,'3158','Abdul Ghaffar ','',NULL,'4232',NULL,' Jaodin Kahn',NULL,NULL,NULL,'0300-3325846',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3159,1,'3159','Mohammad Saleem ','',NULL,'4232',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0346-3600141',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3160,1,'3160','Mohammad Naeem ','',NULL,'4232',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'0301-3913557',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3161,1,'3161','Nadeem Foji ','',NULL,'4232',NULL,' Imam Din',NULL,NULL,NULL,'0305-3532391',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3162,1,'3162','Ata Mohammad ','',NULL,'4232',NULL,' Jamil Khan',NULL,NULL,NULL,'0302-3518257',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3163,1,'3163','Mohammad Ayoub ','',NULL,'4232',NULL,' Qutab Din',NULL,NULL,NULL,'0336-3921787',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3164,1,'3164','Faheem Ahmed ','',NULL,'4232',NULL,' Dr Shamshad Ali (Late)',NULL,NULL,NULL,'0300-3301734',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3165,1,'3165','Ali Sher ','',NULL,'4232',NULL,' Mumtaz Ali Khan',NULL,NULL,NULL,'0302-2524717',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3166,1,'3166','Dr.Abdul Hameed ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'0308-3571020',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3167,1,'3167','Seth Mohammad Ishaque ','',NULL,'4232',NULL,' Akbar Ali',NULL,NULL,NULL,'0302-3313098',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3168,1,'3168','Shafique ','',NULL,'4232',NULL,' Mohammad Ayoub',NULL,NULL,NULL,'0300-3324816',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3169,1,'3169','Shamim Ahmed ','',NULL,'4232',NULL,' Mushtaq Ahmed ',NULL,NULL,NULL,'0306-3446048',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3170,1,'3170','Sadaqat Hussain ','',NULL,'4232',NULL,' Naseem Ahmed (Late)',NULL,NULL,NULL,'0334-3681204',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3171,1,'3171','Naseer Ahmed ','',NULL,'4232',NULL,' Jamil Ahmed',NULL,NULL,NULL,'0345-2823401',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3172,1,'3172','Mohammad Nabeel ','',NULL,'4232',NULL,' Abdul Hakeem',NULL,NULL,NULL,'0333-2668169',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3173,1,'3173','Mohammad Aslam ','',NULL,'4232',NULL,' Ghulam Nabi',NULL,NULL,NULL,'0333-2532090',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3174,1,'3174',' Mohammad Aslam ','',NULL,'4232',NULL,' Wajid Ali ',NULL,NULL,NULL,'0303-3470054',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3175,1,'3175','Mohammad Younas ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0333-2950991',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3176,1,'3176','Babo Nisar ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'0331-2702234',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3177,1,'3177','Mohammad Farooq ','',NULL,'4232',NULL,' Mohammad Shabir',NULL,NULL,NULL,'0336-3730784',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3178,1,'3178','Ali Hasan ','',NULL,'4232',NULL,' Yaseen ali',NULL,NULL,NULL,'0334-3150992',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3179,1,'3179','Ikhlaq ','',NULL,'4232',NULL,' M.Aslam',NULL,NULL,NULL,'0345-3697564',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3180,1,'3180','Humayoon ','',NULL,'4232',NULL,' Talib Hussain',NULL,NULL,NULL,'0334-2556428',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3181,1,'3181','Tariq ','',NULL,'4232',NULL,' M. Younas',NULL,NULL,NULL,'0300-2774478',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3182,1,'3182','M. Shamshad ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0334-39044294',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3183,1,'3183','Molvi Shakir ','',NULL,'4232',NULL,' Sadiq Ali',NULL,NULL,NULL,'0334-2553141',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3184,1,'3184','Abdul Ghaffar ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0333-2533165',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3185,1,'3185','M.Saleem Alam ali ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'0306-3525984',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3186,1,'3186','Mohammad Waseem ','',NULL,'4232',NULL,' Islam (Foji)',NULL,NULL,NULL,'0300-6350165',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3187,1,'3187','Naeem Ahmed ','',NULL,'4232',NULL,' Shamshad Ahmed',NULL,NULL,NULL,'0300-6373242',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3188,1,'3188','Haji Riasat Ali ','',NULL,'4232',NULL,' Hanif Khan',NULL,NULL,NULL,'0346-3628949',NULL,NULL,'Ward No. 1, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3189,1,'3189','Begum Abdul Aziz Khan (Late) ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'0300-3300281',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3190,1,'3190','Abdul Salam (Foji) ','',NULL,'4232',NULL,' Jalal Din',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3191,1,'3191','Umer Daraz ','',NULL,'4232',NULL,' Himayat Ali (Late) ',NULL,NULL,NULL,'0302-39-6824',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3192,1,'3192','Iftikhar ','',NULL,'4232',NULL,' Anwar Ali',NULL,NULL,NULL,'0334-2553474 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3193,1,'3193','Israr Ali ','',NULL,'4232',NULL,' Anwar Ali',NULL,NULL,NULL,'0306-2619156',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3194,1,'3194','Mohammad Aslam ','',NULL,'4232',NULL,' Nazar Mohammad',NULL,NULL,NULL,'0308-3062127 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3195,1,'3195','Saeed Ahmed ','',NULL,'4232',NULL,' Mushtaque Ahmed ',NULL,NULL,NULL,'0334-2813364 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3196,1,'3196','Liaqat Ali ','',NULL,'4232',NULL,' Kareem Bux ',NULL,NULL,NULL,'0334-2559343 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3197,1,'3197','Matlooban ','',NULL,'4232',NULL,' Shabir Ahmed ( Late)',NULL,NULL,NULL,'0333-0285695 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3198,1,'3198','Faizan Ali ','',NULL,'4232',NULL,' Naseer Ali ',NULL,NULL,NULL,'0305-3561106 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3199,1,'3199','Master Riaz Ahmed ','',NULL,'4232',NULL,' Farzand Ali Khan',NULL,NULL,NULL,'0336-8155374 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3200,1,'3200','Mohammad Sharik ','',NULL,'4232',NULL,' Shakeel Ahmed (Late) ',NULL,NULL,NULL,'0302-3906486 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3201,1,'3201','Zain ul Abidin ','',NULL,'4232',NULL,'  Mohammad Saleem (Late) ',NULL,NULL,NULL,'0305-2882414 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3202,1,'3202','Mohammad Ali ','',NULL,'4232',NULL,' Naseer Ahmed (Late) ',NULL,NULL,NULL,'0302-3019548 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3203,1,'3203','Imran Ali ','',NULL,'4232',NULL,' Akbar Ali (Late) ',NULL,NULL,NULL,'0302-3313047 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3204,1,'3204','Khursheed Ahmed ','',NULL,'4232',NULL,' Abdul Satar ',NULL,NULL,NULL,'0301-3640406 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3205,1,'3205','Riaz Ahmed ','',NULL,'4232',NULL,' Wahid Ali Khan',NULL,NULL,NULL,'0346-3628610 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3206,1,'3206','Shahzad Ali ','',NULL,'4232',NULL,' AAshiq Ali (Late) ',NULL,NULL,NULL,'0331-33142104 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3207,1,'3207','Mohammad Arif ','',NULL,'4232',NULL,' Mohammad Ilyas (Late) ',NULL,NULL,NULL,'0300-3110550 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3208,1,'3208','Raza Ali ','',NULL,'4232',NULL,' Ashiq Ali (Late) ',NULL,NULL,NULL,'0306-2213739 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3209,1,'3209','Ejaz Ahmed ','',NULL,'4232',NULL,' Rustam Khan',NULL,NULL,NULL,'0306-8264741 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3210,1,'3210','Noman Ali ','',NULL,'4232',NULL,' Riasat Ali ',NULL,NULL,NULL,'0301-3643571 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3211,1,'3211','Akbar Ali ','',NULL,'4232',NULL,' Shabir Ali ',NULL,NULL,NULL,'0301-3286838 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3212,1,'3212','Javiad Iqbal ','',NULL,'4232',NULL,' Mashooque Ali Khan',NULL,NULL,NULL,'0304-0356950 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3213,1,'3213','Sarfraz Ahmed ','',NULL,'4232',NULL,' Sohrab Ahmed ',NULL,NULL,NULL,'0300-3318243 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3214,1,'3214','Shafqat Ali ','',NULL,'4232',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0336-3760058',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3215,1,'3215','Dr. Haq Nawaz ','',NULL,'4232',NULL,' Ejaz Ahmed ',NULL,NULL,NULL,'0302-3314656 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3216,1,'3216','Qamar Ahmed ','',NULL,'4232',NULL,' Sohrab Ahmed ',NULL,NULL,NULL,'0301-2892620 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3217,1,'3217','Ishtiaque Ahmed ','',NULL,'4232',NULL,' Risaldar Khursheed Ali ',NULL,NULL,NULL,'0333-3796271 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3218,1,'3218','Rashid Ali ','',NULL,'4232',NULL,' Arshad Khan ',NULL,NULL,NULL,'0300-3327681 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3219,1,'3219','Sudheer Ahmed ','',NULL,'4232',NULL,' Shabir Ahmed ',NULL,NULL,NULL,'0302-3080327 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3220,1,'3220','Irshad Ali ','',NULL,'4232',NULL,' Qasim Ali Khan ',NULL,NULL,NULL,'0303-2002933 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3221,1,'3221','Sadaqat Ali ','',NULL,'4232',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0333-7876424 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3222,1,'3222','Manwar Ali ','',NULL,'4232',NULL,' Hayat Mohammad ',NULL,NULL,NULL,'0313-8069090 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3223,1,'3223','Amir Hayat ','',NULL,'4232',NULL,' Liaqat Ali (Late) ',NULL,NULL,NULL,'0306-5167826 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3224,1,'3224','Asgar Ali ','',NULL,'4232',NULL,' Rashid Ali ',NULL,NULL,NULL,'0300-3305599 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3225,1,'3225','Subhan Ali ','',NULL,'4232',NULL,' Imran Mashooque (Late) ',NULL,NULL,NULL,'0302-3080327 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3226,1,'3226','Mushtaque Ahmed ','',NULL,'4232',NULL,' Nabi Sher ',NULL,NULL,NULL,'0333-3796271 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3227,1,'3227','Mukhtiar Ahmed ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'0306-5019560 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3228,1,'3228','Nadeem ','',NULL,'4232',NULL,' Qutabudin ',NULL,NULL,NULL,'0301-3632683 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3229,1,'3229','Nadeem (Ka Ka)  ','',NULL,'4232',NULL,'  Mohammad Siddique ',NULL,NULL,NULL,'0305-2134518',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3230,1,'3230','Risaldar Mansoor Ahmed ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0300-3329690 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3231,1,'3231','Iftikhar Ahmed ','',NULL,'4232',NULL,' Younas Khan ',NULL,NULL,NULL,'0300-3348582 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3232,1,'3232','Kamran Hussain ','',NULL,'4232',NULL,' Manzoor Hussain ',NULL,NULL,NULL,'0307-2566186 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3233,1,'3233','Asif Ali ','',NULL,'4232',NULL,' Master Charagh Ali',NULL,NULL,NULL,'0302-5285187 ',NULL,NULL,'Ward No. 2, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3234,1,'3234','Zoja Mama Umaid Ali (Late) ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'0311-1519141',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3235,1,'3235','Waseem Ahmed ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3236,1,'3236','Himayat Ali (Late) ','',NULL,'4232',NULL,' Nawab Ali',NULL,NULL,NULL,'0300-3632290',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3237,1,'3237','Zulfiqar Ahmed ','',NULL,'4232',NULL,' Mashooq Ali',NULL,NULL,NULL,'0336-123507',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3238,1,'3238','Abdul Sattar ','',NULL,'4232',NULL,' Nasir Ali',NULL,NULL,NULL,'0302-3992648',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3239,1,'3239','Zulfiqar Ali ','',NULL,'4232',NULL,' Dr. Qasim Ali',NULL,NULL,NULL,'0300-3323267',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3240,1,'3240','Haji Ishaq ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'0300-3714317',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3241,1,'3241','Maqsood Ahmed ','',NULL,'4232',NULL,' Mohammad Yaseen',NULL,NULL,NULL,'0304-3216219',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3242,1,'3242','Fiaz Rashid ','',NULL,'4232',NULL,' Ghulam Nabi',NULL,NULL,NULL,'0333-2962112',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3243,1,'3243','Abid Ali ','',NULL,'4232',NULL,' Umaid Ali',NULL,NULL,NULL,'0300-3307474',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3244,1,'3244','Masroor Ahmed   ','',NULL,'4232',NULL,' u',NULL,NULL,NULL,'0306-3313400',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3245,1,'3245','Kashif Iqbal ','',NULL,'4232',NULL,' Iqbal Ahmed',NULL,NULL,NULL,'0345-8312990',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3246,1,'3246','Ali Raza ','',NULL,'4232',NULL,' Mohmmad Akhtar',NULL,NULL,NULL,'0333-9279333',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3247,1,'3247','Zoja Abdul Hameed (Late)  ','',NULL,'4232',NULL,' L',NULL,NULL,NULL,'0300-3022056',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3248,1,'3248','Javaid ','',NULL,'4232',NULL,' Abdul Razzaq ',NULL,NULL,NULL,'0345-2434045',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3249,1,'3249','Faizan ','',NULL,'4232',NULL,' Niaz Ahmed',NULL,NULL,NULL,'0333-2533076',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3250,1,'3250','Abdul Ghaffar ','',NULL,'4232',NULL,' Abdul Sattar',NULL,NULL,NULL,'0333-2533076',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3251,1,'3251','Rashid ','',NULL,'4232',NULL,' Abdul Sattar ',NULL,NULL,NULL,'0301-3586559',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3252,1,'3252','Khalil Ahmed ','',NULL,'4232',NULL,' Jamil Ahmed',NULL,NULL,NULL,'0302-3060865',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3253,1,'3253','Rafique Ahmed ( Zaitoon)  ','',NULL,'4232',NULL,' l',NULL,NULL,NULL,'0306-3513591',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3254,1,'3254','Babar Ali ','',NULL,'4232',NULL,' Umaid Ali',NULL,NULL,NULL,'0311-2731217',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3255,1,'3255','Rashid Ahmed ','',NULL,'4232',NULL,' Abdul Aziz',NULL,NULL,NULL,'0345-8312990',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3256,1,'3256','Zulfiqar Ahmed ','',NULL,'4232',NULL,' Abdul Sattar',NULL,NULL,NULL,'0330-3023751',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3257,1,'3257','Seth Murad Ali ','',NULL,'4232',NULL,' Seth Mehboob Ali',NULL,NULL,NULL,'0308-2510942',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3258,1,'3258','Imdad Ali ','',NULL,'4232',NULL,' Seth Mehboob Ali',NULL,NULL,NULL,'0302-3313105',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3259,1,'3259','Furqan ','',NULL,'4232',NULL,' M. Hanif',NULL,NULL,NULL,'3063051810',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3260,1,'3260','Nasir ali ','',NULL,'4232',NULL,' Niaz Ali',NULL,NULL,NULL,'3058836729',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3261,1,'3261','Mohammad Hassan ','',NULL,'4232',NULL,' Manoon Khan',NULL,NULL,NULL,'3344683217',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3262,1,'3262','Shakil Ahmed ','',NULL,'4232',NULL,' Dost Mohammad',NULL,NULL,NULL,'3023317668',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3263,1,'3263','Javed Ali ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'3009251173',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3264,1,'3264','Hashim Ali ','',NULL,'4232',NULL,' Imam ali',NULL,NULL,NULL,'3482149436',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3265,1,'3265','Dr. M Saleem ','',NULL,'4232',NULL,' Hashim Ali',NULL,NULL,NULL,'3312636596',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3266,1,'3266','Ali Hassan ','',NULL,'4232',NULL,' Mustafa',NULL,NULL,NULL,'3023312231',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3267,1,'3267','Master Waheed ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'3363326866',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3268,1,'3268','Rashid Ali ','',NULL,'4232',NULL,' Shoukat Ali',NULL,NULL,NULL,'3022547797',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3269,1,'3269','Razia ','',NULL,'4232',NULL,' Abdul Hameed Khan',NULL,NULL,NULL,'3058376380',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3270,1,'3270','Naseem Iqbal ','',NULL,'4232',NULL,' Mehfooz Kahn ',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3271,1,'3271','Gulzar Ahmed ','',NULL,'4232',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3053804900',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3272,1,'3272','M. Yousaf ','',NULL,'4232',NULL,' Wajid ali',NULL,NULL,NULL,'3002234159',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3273,1,'3273','Shoukat Ali ','',NULL,'4232',NULL,' Inayat Ali',NULL,NULL,NULL,'3003055172',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3274,1,'3274','Momin ','',NULL,'4232',NULL,' Niaz Ahmed ',NULL,NULL,NULL,'3033009364',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3275,1,'3275','Abdul Ghaffar ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3362061580',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3276,1,'3276','Liaqat ali ','',NULL,'4232',NULL,' Shoukat Ali',NULL,NULL,NULL,'3463847320',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3277,1,'3277','Nisar Ahmed (Pirji) ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3053503486',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3278,1,'3278','Mohammad Shakil ','',NULL,'4232',NULL,' M. Yaqoob',NULL,NULL,NULL,'3023318167',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3279,1,'3279','M. Jamil ','',NULL,'4232',NULL,' M. Yaseen ',NULL,NULL,NULL,'3022391678',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3280,1,'3280','Mohammad Farooq ','',NULL,'4232',NULL,' Taj Mohammad',NULL,NULL,NULL,'3013632751',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3281,1,'3281','Rizwan ','',NULL,'4232',NULL,' M. Hanif ',NULL,NULL,NULL,'3462533218',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3282,1,'3282','Iftikhar Ali ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'3023317882',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3283,1,'3283','M. Ishaq ','',NULL,'4232',NULL,' Ashraf Khan',NULL,NULL,NULL,'3000362708',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3284,1,'3284','Niaz Ahmed ','',NULL,'4232',NULL,' Imam Ali',NULL,NULL,NULL,'3047620328',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3285,1,'3285','M. Sabir ','',NULL,'4232',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'3362061580',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3286,1,'3286','M. Ayoub ','',NULL,'4232',NULL,' Fateh Mohammad ',NULL,NULL,NULL,'3078196798',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3287,1,'3287','Naeem ahmed ','',NULL,'4232',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3003325175',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3288,1,'3288','Naveed Ahmed ','',NULL,'4232',NULL,' Salabat Ali ',NULL,NULL,NULL,'3013228573',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3289,1,'3289','Dr. Mohammad Qasim ','',NULL,'4232',NULL,' Imam Ali Khan',NULL,NULL,NULL,'3122349299',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3290,1,'3290','Jangsher Ali ','',NULL,'4232',NULL,' Jaodeen Khan',NULL,NULL,NULL,'3013287063',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3291,1,'3291','Imran Foji ','',NULL,'4232',NULL,' Mohammad Hanif',NULL,NULL,NULL,'3053021203',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3292,1,'3292','Nadeem ','',NULL,'4232',NULL,' Dost Mohammad',NULL,NULL,NULL,'3059423506',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3293,1,'3293','Liaqat ','',NULL,'4232',NULL,' Abdul Hakeem',NULL,NULL,NULL,'3083061004',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3294,1,'3294','Toheed (Mistari) ','',NULL,'4232',NULL,' Aziz Ahmed ',NULL,NULL,NULL,'3012789578',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3295,1,'3295','Fareed ahmed ','',NULL,'4232',NULL,' Aziz Ahmed',NULL,NULL,NULL,'3000359709',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3296,1,'3296','Abdul Hakim ','',NULL,'4232',NULL,' Mehboob ali',NULL,NULL,NULL,'3023119545',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3297,1,'3297','Sadaqat Ali ','',NULL,'4232',NULL,' Abdul Hakim',NULL,NULL,NULL,'3322585430',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3298,1,'3298','Jangsher Ali ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3012800449',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3299,1,'3299','Mohammad saleem ','',NULL,'4232',NULL,' Hayat Mohammad ',NULL,NULL,NULL,'3342563312',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3300,1,'3300','M.Aslam ','',NULL,'4232',NULL,' Feroz Khan',NULL,NULL,NULL,'3052589011',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3301,1,'3301','Asif Ali ','',NULL,'4232',NULL,' Mohammad Yousaf',NULL,NULL,NULL,'3362269143',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3302,1,'3302','Ameer Hassan ','',NULL,'4232',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3013587405',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3303,1,'3303','Abdul Jabar ','',NULL,'4232',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3002810305',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3304,1,'3304','Zulfiqar Ali ','',NULL,'4232',NULL,' Umaid Ali',NULL,NULL,NULL,'3027907593',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3305,1,'3305','M.Saleem ','',NULL,'4232',NULL,' Umaid Ali',NULL,NULL,NULL,'3333754332',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3306,1,'3306','Master  Imran ','',NULL,'4232',NULL,'  Hayat Mohammad',NULL,NULL,NULL,'3453697560',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3307,1,'3307','Kifayat Ali ','',NULL,'4232',NULL,' Jafar Ali',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3308,1,'3308','M Jamil ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'3330363112',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3309,1,'3309','Javed Ali ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'3005544120',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3310,1,'3310','Anwar Ali ','',NULL,'4232',NULL,' Nawab Ali Khan',NULL,NULL,NULL,'3024545090',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3311,1,'3311','Shahid ','',NULL,'4232',NULL,' M Siddique',NULL,NULL,NULL,'3073449349',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3312,1,'3312','Zahid ','',NULL,'4232',NULL,' M. Siddique',NULL,NULL,NULL,'3006650626',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3313,1,'3313','M. Akram ','',NULL,'4232',NULL,' Feroz Khan',NULL,NULL,NULL,'3002310735',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3314,1,'3314','Adil Ali ','',NULL,'4232',NULL,' Mansab Ali',NULL,NULL,NULL,'3003327852',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3315,1,'3315','Mohammad Hayat ','',NULL,'4232',NULL,' Kareem Khan',NULL,NULL,NULL,'3009203277',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3316,1,'3316','Munshi Khan ','',NULL,'4232',NULL,' Kareem Khan',NULL,NULL,NULL,'3342565078',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3317,1,'3317','Shabir Ahmed ','',NULL,'4232',NULL,' Shakoor Din',NULL,NULL,NULL,'3342551660',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3318,1,'3318','Waqar Ahmed ','',NULL,'4232',NULL,' Nisar Ahmed ',NULL,NULL,NULL,'3052136911',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3319,1,'3319','Waqas Foji ','',NULL,'4232',NULL,' Nisar Ahmed',NULL,NULL,NULL,'3333239268',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3320,1,'3320','Asif ','',NULL,'4232',NULL,' Ghulam Nabi',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3321,1,'3321','Zoja Yousaf Ali Khan ','',NULL,'4232',NULL,' N',NULL,NULL,NULL,'3003321087',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3322,1,'3322','Master Tanveer Ahmed ','',NULL,'4232',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3363437938',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3323,1,'3323','Aladeen ','',NULL,'4232',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3062216360',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3324,1,'3324','Aurang Zaib ','',NULL,'4232',NULL,' Aladin',NULL,NULL,NULL,'',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3325,1,'3325','Iftikhar ','',NULL,'4232',NULL,' Asad Ali Khan',NULL,NULL,NULL,'3366891756',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3326,1,'3326','Tanveer ','',NULL,'4232',NULL,' Wajid Ali Khan',NULL,NULL,NULL,'3012390413',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3327,1,'3327','Mohammad Manwar ','',NULL,'4232',NULL,' Nawab Ali ',NULL,NULL,NULL,'3032669866',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3328,1,'3328','Jangsher ','',NULL,'4232',NULL,' Zia uddin ',NULL,NULL,NULL,'3073449349',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3329,1,'3329','M Farooq ','',NULL,'4232',NULL,' Abdul Aziz',NULL,NULL,NULL,'3013352272',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3330,1,'3330','Wilayat Ali ','',NULL,'4232',NULL,' Hayat Mohammad',NULL,NULL,NULL,'3055816606',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3331,1,'3331','Mohammad Nadeem ','',NULL,'4232',NULL,' Phool Mohammad ',NULL,NULL,NULL,'3073083684',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3332,1,'3332','Abdul Rasheed ','',NULL,'4232',NULL,' Jafar Ali Khan',NULL,NULL,NULL,'3083542991',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3333,1,'3333','Sultan Ahmed ','',NULL,'4232',NULL,' Asad Ali',NULL,NULL,NULL,'3023037909',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3334,1,'3334','Imran Hussain ','',NULL,'4232',NULL,' Asad Ali',NULL,NULL,NULL,'3023317782',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3335,1,'3335','Shamshad Ahmed ','',NULL,'4232',NULL,' Noor Mohammad',NULL,NULL,NULL,'3002553889',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3336,1,'3336','Haider Ali ','',NULL,'4232',NULL,' Shamshad Ali',NULL,NULL,NULL,'3082745453',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3337,1,'3337','Mohammad Rafiq ','',NULL,'4232',NULL,' Noor Mohammad',NULL,NULL,NULL,'3453718204',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3338,1,'3338','Abdul Qayoom ','',NULL,'4232',NULL,' Fateh Mohammad',NULL,NULL,NULL,'3013324680',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3339,1,'3339','Jahan Zaibul Hasan ','',NULL,'4232',NULL,' M. Yaqoob ',NULL,NULL,NULL,'3003488611',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3340,1,'3340','Abdul Rasheed ','',NULL,'4232',NULL,' Abdul Aziz',NULL,NULL,NULL,'3032991888',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3341,1,'3341','Waheed Ahmed ','',NULL,'4232',NULL,' Abdul Aziz',NULL,NULL,NULL,'3023000835',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3342,1,'3342','Seth Abdul Jabar (Late) ','',NULL,'4232',NULL,' Mumtaz Ali',NULL,NULL,NULL,'3012612857',NULL,NULL,'Ward No. 5, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3343,1,'3343','Javed Mumtaz ','',NULL,'4232',NULL,' Mumatz Ali',NULL,NULL,NULL,'0300-3307676',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3344,1,'3344','Shakil Ahmed ','',NULL,'4232',NULL,' Mohammad Yaseen ',NULL,NULL,NULL,'0300-3321225',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3345,1,'3345','Shahid Ali ','',NULL,'4232',NULL,' Abdul Majeed ',NULL,NULL,NULL,'0301-3575874',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3346,1,'3346','Javed Iqbal ','',NULL,'4232',NULL,' Abdul Majeed',NULL,NULL,NULL,'0300-3325541',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3347,1,'3347','Altaf Hussain ','',NULL,'4232',NULL,' Mushtaq Ahmed',NULL,NULL,NULL,'0346-3713761',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3348,1,'3348','Maqsood Ali ','',NULL,'4232',NULL,' Shan Mohammad',NULL,NULL,NULL,'0331-3671409',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3349,1,'3349','Mohammad Asif ','',NULL,'4232',NULL,' Imam Ali',NULL,NULL,NULL,'0304-3959316',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3350,1,'3350','Mohammad Yasin Khan ','',NULL,'4232',NULL,' Abdullah Khan',NULL,NULL,NULL,'0303-3919817',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3351,1,'3351','Mohammad Farooq Khan ','',NULL,'4232',NULL,' Qasim Ali',NULL,NULL,NULL,'0333-6670927',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3352,1,'3352','Adil Nisar ','',NULL,'4232',NULL,' Nisar Ahmed ',NULL,NULL,NULL,'0334-2551990',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3353,1,'3353','Mohammad Shahid ','',NULL,'4232',NULL,' Yasin Khan',NULL,NULL,NULL,'0312-3192964',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3354,1,'3354','Abdul Aziz ','',NULL,'4232',NULL,' Muneer Ahmed',NULL,NULL,NULL,'0300-2579696',NULL,NULL,'Ward No. 6, Station, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3355,1,'3355','Aashiq Ali ','',NULL,'4232',NULL,' Muneer Ahmed',NULL,NULL,NULL,'0307-8993443',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3356,1,'3356','Mehboob Ali ','',NULL,'4232',NULL,' Arshad Ali',NULL,NULL,NULL,'0302-3312612',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3357,1,'3357','Mohammad Aslam ','',NULL,'4232',NULL,' Arshad Ali',NULL,NULL,NULL,'0331-2949125',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3358,1,'3358','Mohammad Saleem ','',NULL,'4232',NULL,' Arshad Ali',NULL,NULL,NULL,'0346-3628231',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3359,1,'3359','Mohammad Ayoub ','',NULL,'4232',NULL,' Hashim Ali',NULL,NULL,NULL,'0302-2625128',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3360,1,'3360','Meraj Ali ','',NULL,'4232',NULL,' Mohammad Sarwar Ali (Late)',NULL,NULL,NULL,'0303-3077143',NULL,NULL,'Ward No. 4, Tando Jan Mohammad',NULL,'','Sindh','Tando Jan Mohammad ',NULL,NULL,NULL),
(3361,1,'3361','Dr.Muhammad Ayub Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0723-661661',NULL,NULL,'B-3, FFC Town Mirpur Mathelo-65050',NULL,'','Sindh','Mirpur Mathelo',NULL,NULL,NULL),
(3362,1,'3362','Abdul Shafiq kk','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0723-661500',NULL,NULL,'C-39, FFC Town Mirpur Mathelo-65050',NULL,'','Sindh','Mirpur Mathelo',NULL,NULL,NULL),
(3363,1,'3363','Fahad Ullah','',NULL,'4232',NULL,'',NULL,NULL,NULL,'0723-661500',NULL,NULL,'R 10 ,BOQ-3, FFC Town Mirpur Mathelo-65050',NULL,'','Sindh','Mirpur Mathelo',NULL,NULL,NULL),
(3364,1,'3364','Dr. Liaquat Ali Kahn','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300394',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3365,1,'3365','Shoukat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3462553870',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3366,1,'3366','Javed Ali Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332927776',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3367,1,'3367','Shahid Ali Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3443741445',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3368,1,'3368','Islam Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3337031328',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3369,1,'3369','Zahid Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3443735928',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3370,1,'3370','Tahir Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3465372640',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3371,1,'3371','Zain Roshan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3470359991',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3372,1,'3372','Muhammad Usman Sawi Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3373,1,'3373','Zulfiquar Liaquat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3461700787',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3374,1,'3374','Liaquat Ali Khanji','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3375,1,'3375','Captain Shoukat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3361354703',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3376,1,'3376','Muhammad Aslam Taj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3068225480',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3377,1,'3377','Wilayat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3378,1,'3378','Kaleem Hakim Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3379,1,'3379','Gul Muhammad Faiz Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3022567477',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3380,1,'3380','Shoukat Ali Khan Faiz Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063314990',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3381,1,'3381','Master Hanif Khan Faiz Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003220325',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3382,1,'3382','Shahid Ramzan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3023082677',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3383,1,'3383','Waseem Munawar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3008255115',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3384,1,'3384','Saeed Alam Khan Khan Muhd Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003558530',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3385,1,'3385','Haji Mumtaz Khan Yaseen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3462416281',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3386,1,'3386','Liaquat Ali Jasso Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013369639',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3387,1,'3387','Yameen Yaseen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3068229725',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3388,1,'3388','Seth Suleman Khan Ashraf Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300265',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3389,1,'3389','Muhammad Saleem Bhanwro Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063316250',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3390,1,'3390','Maqsood Bhanwro Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063316250',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3391,1,'3391','Noor Muhammad Muqarab Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3468913561',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3392,1,'3392','Nawab Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063029857',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3393,1,'3393','Aladin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002142528',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3394,1,'3394','Engineer Adnan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3395,1,'3395','Kamran Murad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3396,1,'3396','Engineer Sarwar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3397,1,'3397','Muhammad Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3398,1,'3398','Dawood Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063316343',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3399,1,'3399','Tanveer Dawood Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063357635',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3400,1,'3400','Abid Hussain Taj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3222071292',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3401,1,'3401','Akthar Khan Taj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3344265702',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3402,1,'3402','Waseem Hassan Muhammad Aslam ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3062225480',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3403,1,'3403','Muhammad Iqbal Ismail Khan (N) Jang','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063315808',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3404,1,'3404','Ishtiaq Ahmed Ismail Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3363221952',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3405,1,'3405','Abdul Rehman Abdullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3406,1,'3406','Muhammad Usman Abdullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013283313',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3407,1,'3407','Muhammad Azam Abdullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003311037',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3408,1,'3408','Sadullah Khan Bahdur Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3409,1,'3409','Dilshad Khan Sadullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003283961',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3410,1,'3410','Tayyab Ali Khan Sadullah Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003561830',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3411,1,'3411','Muhammad Iqbal Dolat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3412,1,'3412','Molvi Kamram Aleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'30683227063',NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3413,1,'3413','Alaodin Khan Ldhu Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3414,1,'3414','Master Shabbir Khan Moj Din Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013229335',NULL,NULL,'Ismalamia High School Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3415,1,'3415','Master Ghulam Rasool Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3416,1,'3416','Akbar Majaor Khan (ASRAF)','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3417,1,'3417','Usman Majeed Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Riaz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3418,1,'3418','Iqbal Inayat Ali (Foji) ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3483396030',NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3419,1,'3419','Javed (Foji) Inayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3410359010',NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3420,1,'3420','Parvez Inayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3453726440',NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3421,1,'3421','Shabir Faiz Muhammad Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3033481974',NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3422,1,'3422','Jang Sher Khan Fateh Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3423,1,'3423','Liaquat Aleemuddin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'?Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3424,1,'3424','Muhammad Yousif? (Gega Khan)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3062652533',NULL,NULL,'House No.Y-44 Thana road Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3425,1,'3425','Haji Muhammad Yousif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3023992189',NULL,NULL,'House No.Y-44 Thana road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3426,1,'3426','Taj Muhammad Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002060034',NULL,NULL,'Post Office Khpro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3427,1,'3427','Hyder Taj Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002060034',NULL,NULL,'Gyamkhana Road',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3428,1,'3428','Shoukat Barkat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Mirpurkhas Road',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3429,1,'3429','Liaquat Barkat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Mirpurkhas Road',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3430,1,'3430','Yameen Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Mirpurkhas Road',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3431,1,'3431','Ghulam Barkat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Mirpurkhas Road',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3432,1,'3432','Muhammad Ayub Khan (Gega Khan)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332946911',NULL,NULL,'House No.Y-44 Thana road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3433,1,'3433','Liaquat Ali Khan (HBL)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063309363',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3434,1,'3434','Raja Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063309363',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3435,1,'3435','Shabiir Khan Majeed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3468908887',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3436,1,'3436','Ali Hassan Majeed Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3070032252',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3437,1,'3437','Muhammad Usman','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3055254127',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3438,1,'3438','Maqsood Ali Khan Sanno Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3083593846',NULL,NULL,'Rind Para Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3439,1,'3439','Qadeer Khan Yousif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3412602227',NULL,NULL,'Qaim khani Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3440,1,'3440','Ali Sher Khan Pany Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003642329',NULL,NULL,'Eid Gah Mohallah Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3441,1,'3441','Muhammad Yaseen ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063316044',NULL,NULL,'Eid gah Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3442,1,'3442','Muhammad Hanif KK Mustique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3453746786',NULL,NULL,'Gymkhana road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3443,1,'3443','Muhammad Yousif? Pany khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063315517',NULL,NULL,'Eid Gah Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3444,1,'3444','Niamat Ali Faiz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013221477',NULL,NULL,'Ramzan Chok Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3445,1,'3445','Dr. Maqsood Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3078190326',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3446,1,'3446','Shabir Ali Khan Sadullah khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013564601',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3447,1,'3447','Younis Ali Khan Sadullah khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013220994',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3448,1,'3448','Ilyas Ali Khan Umer khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002772148',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3449,1,'3449','Shoukat Ashique Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3078199307',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3450,1,'3450','Sadique Ali Khan Ashique Ali khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063052918',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3451,1,'3451','Muhammad Yousif Shoukat','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3078196654',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3452,1,'3452','Muhammad Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013228288',NULL,NULL,'Dr. Maqsood Mohalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3453,1,'3453','Muhammad Aslam Mohammad Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003302690',NULL,NULL,'Sunara Gali Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3454,1,'3454','Sarwar Khan Sadullah Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003356029',NULL,NULL,'Dr Maqsood ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3455,1,'3455','Muhammad Yousif Muhammad Iqbal (Foji)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003321229',NULL,NULL,'Ramzan Chok',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3456,1,'3456','Murad Khan Taj Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3062086501',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3457,1,'3457','Javaid Khan Wajid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003324068',NULL,NULL,'Islamabad Mohalla Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3458,1,'3458','Jamshed Ali Khan Arshad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3318016320',NULL,NULL,'Islamabad Mohalla Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3459,1,'3459','Muhammad Farooque Ahmed (N)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3462090592',NULL,NULL,'Islamabad Muhallah Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3460,1,'3460','Muslim Nisar Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063310567',NULL,NULL,'Islamabad Muhallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3461,1,'3461','Muhammad Younis Aleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Muhallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3462,1,'3462','Abdul Qadeer Aleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Islamabad Muhallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3463,1,'3463','Nadeem Muhammad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3342613859',NULL,NULL,'Sonar Ali Gali Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3464,1,'3464','Saleem Muhammad Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013456219',NULL,NULL,'Sonar Ali Gali Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3465,1,'3465','Aslam Muhammad Ali KK','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003302690',NULL,NULL,'Sonar Ali Gali Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3466,1,'3466','Abdu Bakar Dawood Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Faiz Muhammad Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3467,1,'3467','Muhammad Iqbal Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3313558196',NULL,NULL,'Ramzan Chok Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3468,1,'3468','Abdul Hameed (Master)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3133580677',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3469,1,'3469','Abdul Qadar Chand Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003307591',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3470,1,'3470','Zahid Ali Ismail Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3468913516',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3471,1,'3471','Muhammad Akram Ismail Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3472,1,'3472','Khurshed Mustaque Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3023640050',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3473,1,'3473','Nadeem Khan Mushtaque','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3378047740',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3474,1,'3474','Waseem Khan Phool Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3082320190',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3475,1,'3475','Akram Habib Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3476,1,'3476','Ayub Khan Phool Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3477,1,'3477','Hassan Yaseen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3478,1,'3478','Ikram Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3479,1,'3479','Zulfiquar Taj Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3480,1,'3480','Amir Hassan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013227789',NULL,NULL,'Ramzan Chok',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3481,1,'3481','Mohammad Yousif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3323227274',NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3482,1,'3482','Muhammad Anwar Ismail Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063310755',NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3483,1,'3483','Muhammad Ismail (RESALDAR)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3076331115',NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3484,1,'3484','Liaquat Hassan Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300941',NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3485,1,'3485','Tanveer Hassan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3486,1,'3486','Muhammad Aslam Ismail Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3487,1,'3487','Noshrwan Khan Salman Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013564230',NULL,NULL,'Gymkhan Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3488,1,'3488','Haji Ghulam Rasool Khan Salman Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3489,1,'3489','Zameer Ahmed Yousif Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3423807776',NULL,NULL,'Kaim Khani Muhalla ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3490,1,'3490','Muhammad Hussain','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013228013',NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3491,1,'3491','Muhammad Saleem Fatha M. khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3492,1,'3492','Aamir Khan Mohydin Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3263162431',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3493,1,'3493','Kamran Yousif Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3378030032',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3494,1,'3494','Muhammad Saleem Hakim Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002752807',NULL,NULL,'Gharibabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3495,1,'3495','Salahudin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003217193',NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3496,1,'3496','Thekedar Yaqoob Khan Azeem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3333136183',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3497,1,'3497','Nazim Yaqoob Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3313306786',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3498,1,'3498','Yaseen Khan Ahmed Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3499,1,'3499','Muhammad Usman Khan Nabbo ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla Khipro ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3500,1,'3500','Muhammad Yousif Khan Aleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3501,1,'3501','Muhammad Saleem Khan Ahmed Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3502,1,'3502','Muhammad Arshad Ibrahim Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013224501',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3503,1,'3503','Muhammad Usman Khan Ibrahim Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013227354',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3504,1,'3504','Muhammad Asif Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3505,1,'3505','Imran Khan Mukhtiar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3363747000',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3506,1,'3506','Nadeem Khan Azeem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3453746782',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3507,1,'3507','Ali Mudin Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'332685687',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3508,1,'3508','Javed Khan Dawood Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300145',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3509,1,'3509','Sajid Khan Dawood Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002341090',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3510,1,'3510','Wilayat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332711796',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3511,1,'3511','Khalid Dawood Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3023312264',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3512,1,'3512','Murad Saifuddin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3463753305',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3513,1,'3513','Shoukat Saifuddin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3073310125',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3514,1,'3514','Liaquat Laado Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3515,1,'3515','Abdul Sattar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3516,1,'3516','Saood Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3082622833',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3517,1,'3517','Saleem Shakir Azeem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003986090',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3518,1,'3518','Haji Mehfuz Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300360',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3519,1,'3519','Muhammad Hassan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003319542',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3520,1,'3520','Kamran Ali Liaqat Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3068224674',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3521,1,'3521','Shahzad Khan Dawood Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003505059',NULL,NULL,'Kaim Khani Muhalla',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3522,1,'3522','Thekedar Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332916832',NULL,NULL,'Ramzan Chowk',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3523,1,'3523','Islam Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3337031328',NULL,NULL,'Gharibabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3524,1,'3524','Muhammad Younis Mohyo Din Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002008293',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3525,1,'3525','Muhammad Imran','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3033158037',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3526,1,'3526','Mushtaque Ahmed Ismail Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3009073893',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3527,1,'3527','Abbass Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3088783144',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3528,1,'3528','Abid Khan Thakadar','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3006826686',NULL,NULL,'Gharibabad Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3529,1,'3529','Muhammad Aslam','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3313353427',NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3530,1,'3530','Jang Bahadur Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063310618',NULL,NULL,'Eid Gah Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3531,1,'3531','Naveed Hassan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3022671534',NULL,NULL,'Nawab Yaseen Khan Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3532,1,'3532','Muhammad Kamran Liaquat Ali','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003323864',NULL,NULL,'Ramzan Chowk',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3533,1,'3533','Muhammad Irfan Sawi Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063316916',NULL,NULL,'Gharibabad Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3534,1,'3534','Muhammad Talha','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3360123009',NULL,NULL,'Kaim Khani Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3535,1,'3535','Professor Taj Muhammad ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332917074',NULL,NULL,'Riaz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3536,1,'3536','Hamza Iqbal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3338177757',NULL,NULL,'Kaim Khani Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3537,1,'3537','Muhammad Faisal','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3012936171',NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3538,1,'3538','Haji Muhammad Hassan Bhanwroo Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003099551',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3539,1,'3539','Imran Yousif Muhammad Yousif Khan (FMC)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3453735794',NULL,NULL,'Kaim Khani Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3540,1,'3540','Ali Sher Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3022223511',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3541,1,'3541','Tarique Aziz News Reporter ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3072437181',NULL,NULL,'Dr. Maqsood Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3542,1,'3542','Ali Hassan Roshan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003314196',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3543,1,'3543','Umer Din Barkat Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3052879567',NULL,NULL,'Aziz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3544,1,'3544','Riyasat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3013320125',NULL,NULL,'Aziz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3545,1,'3545','Zameer Ahmed','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3423807776',NULL,NULL,'MPS Road Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3546,1,'3546','Dr. Shayan Iqbal Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3340272940',NULL,NULL,'Mehran Medical Center',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3547,1,'3547','Kamran Yousif','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003791325',NULL,NULL,'Kaim Khani Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3548,1,'3548','Ghulam Rasool Khajoo Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3473526626',NULL,NULL,'Aziz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3549,1,'3549','Atif Ashique Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3069066598',NULL,NULL,'Aziz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3550,1,'3550','Muhammad Aamir Ashique Sarwar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3113130723',NULL,NULL,'Aziz Colony Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3551,1,'3551','Nazim Yaqoob Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3313306786',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3552,1,'3552','Chairman Waseem Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3008255551',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3553,1,'3553','Dr. Liaquat Ali Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300394',NULL,NULL,'Gharibabad Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3554,1,'3554','Liaquat Ali Khan (UBL)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3453746864',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3555,1,'3555','Liaquat Ali Khan (HBL)','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3062240918',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3556,1,'3556','Director General Liaquat Jabbar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'?',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3557,1,'3557','Liaquat Ali Khan Thekedar ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3332916832',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3558,1,'3558','Haji Liaqaut Hassan Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300941',NULL,NULL,'Gymkhana Road ',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3559,1,'3559','Liaqaut Ali Khanji','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gharibabad',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3560,1,'3560','Shoukat Ali Khan Chairman Wapda','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063314990',NULL,NULL,'Ramzan Chowk Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3561,1,'3561','Thekedar Yaqoob Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3333136183',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3562,1,'3562','Hanif Mushtaque Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3563,1,'3563','Haji Dawood Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3023312264',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3564,1,'3564','Muhammad Yousaf Aleem Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3565,1,'3565','Thekedar Abid Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Gharibabad',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3566,1,'3566','Aladin Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3002142528',NULL,NULL,'Eid Gah Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3567,1,'3567','Saeed Alam Khan Muhammad Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003558530',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3568,1,'3568','Engineer Sarwar Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Eid Gah MOhallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3569,1,'3569','Seth Haji Suleman Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003300265',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3570,1,'3570','Jang Bahadur Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063310618',NULL,NULL,'Eid Gah Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3571,1,'3571','Dr. Maqsood Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3078190326',NULL,NULL,'Dr. Maqsood Gali',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3572,1,'3572','Haji Abdul Qadeer Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaimkhani Mohallah Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3573,1,'3573','Muhammad Younis Mohidin Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3033158037',NULL,NULL,'Gosia Masjid Khipro',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3574,1,'3574','Muhammad Akram Ismail Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3022141278',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3575,1,'3575','Advocate Abdul Sattar Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3063315524',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3576,1,'3576','Haji Mehfooz Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3577,1,'3577','Neawab Mehmeed Yaseen Khan','',NULL,'4232',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL),
(3578,1,'3578','Wilayat Ali Khan ','',NULL,'4232',NULL,'',NULL,NULL,NULL,'3003380028',NULL,NULL,'Kaimkhani Mohallah',NULL,'','Sindh','Khipro',NULL,NULL,NULL);

/*Table structure for table `jobstatusmatix` */

DROP TABLE IF EXISTS `jobstatusmatix`;

CREATE TABLE `jobstatusmatix` (
  `JobID` int(3) NOT NULL AUTO_INCREMENT,
  `JobNature` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JobID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `jobstatusmatix` */

insert  into `jobstatusmatix`(`JobID`,`JobNature`) values 
(1,'Government'),
(2,'Armed force'),
(3,'Pakistan Army'),
(4,'Pakistan Navy'),
(5,'Pakistan Air Force'),
(6,'Air Weapons Complex'),
(7,'Heavy Industries Taxila\r\n'),
(8,'Defence Science and Technology'),
(9,'Pakistan Aeronautical Complex');

/*Table structure for table `jobtitlematix` */

DROP TABLE IF EXISTS `jobtitlematix`;

CREATE TABLE `jobtitlematix` (
  `JobTitleID` int(5) NOT NULL AUTO_INCREMENT,
  `JobTitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JobTitleID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `jobtitlematix` */

insert  into `jobtitlematix`(`JobTitleID`,`JobTitle`) values 
(1,'Dr.'),
(2,'Eng.'),
(3,'Business'),
(4,'Acccounts'),
(5,'Management'),
(6,'Finance '),
(7,'Marketing '),
(8,'RealEstate'),
(9,'Operation'),
(10,'Health'),
(11,'Consultant'),
(12,'Farmer'),
(13,'Foreces'),
(14,'Security'),
(15,'others');

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
    DECLARE v_ID INT;
    
    select max(id)+1 into v_ID from `headoffamily`;
    
    set new.headid = concat(v_ID,'-',new.HeadOfFamily);
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
