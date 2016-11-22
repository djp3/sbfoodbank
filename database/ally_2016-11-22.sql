# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.1.16-MariaDB)
# Database: ally
# Generation Time: 2016-11-22 17:44:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Agency Name` varchar(255) DEFAULT NULL,
  `Parent Agency Name` varchar(255) DEFAULT NULL,
  `Distribution Site Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Service Type` varchar(255) DEFAULT NULL,
  `How to Enroll` varchar(255) DEFAULT NULL,
  `Prepared (P) or Unprepared (U)` varchar(255) DEFAULT NULL,
  `Nutrition Education (Y/N)` varchar(255) DEFAULT NULL,
  `Referral Services (Y/N)` varchar(255) DEFAULT NULL,
  `Days of Distribution` varchar(255) DEFAULT NULL,
  `Times of Distribution` varchar(255) DEFAULT NULL,
  `USDA` varchar(255) DEFAULT NULL,
  `Foodbank Program or Agency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;

INSERT INTO `sites` (`id`, `Agency Name`, `Parent Agency Name`, `Distribution Site Address`, `City`, `State`, `Zip`, `Service Type`, `How to Enroll`, `Prepared (P) or Unprepared (U)`, `Nutrition Education (Y/N)`, `Referral Services (Y/N)`, `Days of Distribution`, `Times of Distribution`, `USDA`, `Foodbank Program or Agency`)
VALUES
	(1,'Girl\'s Inc. Programs','Girls Inc. Goleta Valley','4973 Hollister Avenue','Santa Barbara ','CA',93111,'Pantry','Show Up During Distribution','U','Y','N','Monday-Friday','10:00am-6:00pm','Y','Agency'),
	(2,'Good Shepherd Lutheran Church','Good Shepherrd Lutheran Church','380 North Fairview','Santa Barbara ','CA',93111,'Pantry','Show Up During Distribution','U','Y','N','','','Y','Agency'),
	(3,'Path Point','Pathpoint El Carrillo','315 W. Carrillo St.','Santa Barbara ','CA',93101,'Other','Visit http://santabarbarastreetmedicine.org/clinics/','U','N','N','','','N','Agency'),
	(4,'Santa Barbara Education Foundation','Special Education Transition Program','4750 Hollister Ave','Santa Barbara ','CA',93101,'Other','Visit http://santabarbarastreetmedicine.org/clinics/','U','N','N','','','N','Agency'),
	(5,'Academy of Healing Arts','AHA! Academy of Healing Arts','1525 Santa Barbara Street','Santa Barbara ','CA',93101,'Pantry','Show Up During Distribution','U','Y','N','Monday-Friday','3:30-5:00pm','Y','Agency'),
	(6,'Santa Barbara County Public Health','Network for a Healthy California','2125 South Centerpointe Parkway #314','Santa Barbara ','CA',93101,'Pantry','Show Up During Distribution','U','Y','N','','','Y','Agency'),
	(7,'Community Action Commission','TRA & Parent Partner','500 W. Foster Road','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(8,'Univ of CA Cooperative Extension','Univ of CA Cooperative Extension','2156 Sierra Way','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(9,'SB Community Development Ctr.','SBCDC Food For Angels','781 embarcadero Del Mar','Goleta ','CA',93117,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(10,'Zona Seca Santa Barbara','Zona Seca Santa Barbara','26 Figueroa St','Goleta ','CA',93117,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(11,'Guadalupe Foursquare Church','Guadalupe Foursquare Church','935 Guadalupe Street','Guadalupe','CA',93434,'Pantry','Open to All','U','N','N','','','Y','Agency'),
	(12,'Garza, Rodriguez & Tajon Ser','Healing Grounds','P.O. Box 2632','Guadalupe','CA',93434,'Pantry','Open to All','U','N','N','','','Y','Agency'),
	(13,'Central Coast Rescue Mission','Central Coast Rescue Mission','P.O. Box 6467','Santa Maria','CA',93454,'Pantry','Open to All','U&P','N','N','','','N','Agency'),
	(14,'Network for a Healthy California','Network for a Healthy California','2125 So. Centerpointe Parkway','Santa Maria','CA',93454,'Pantry','Open to All','U&P','N','N','','','N','Agency'),
	(15,'Coast Valley Worship Center','Coast Valley Worship Center','1125 E Clark Ave','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(16,'Coast Valley Worship Center','Coast Valley Worship Center - Lompoc','133 No. F St','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(17,'Coast Valley Worship Center','Coast Valley Angels','1165 McCoy Lane','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(18,'Kid\'s Corner','Stuart C. Gildred YMCA','900 N. Refugio Road','Santa Ynez','CA',93460,'Pantry','Open to All','U','N','N','','','Y','Agency'),
	(19,'Freedom Warming Shelter','First United Methodist Church','305 E Anapamu','Santa Barbara ','CA',93101,'Soup Kitchen','Open to All','P','N','N','','','N','Agency'),
	(20,'Teenage Pregnancy Program TAPP','Community Action Commission','201 W. Chapel','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','Monday & Wednesday','10:00am','N','Agency'),
	(21,'Family & Youth Services','Community Action Commission','117 N. B Street','Lompoc ','CA',93436,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(22,'PSHH/LADM2 (Housing)','People\'s Self Help Housing','1148 W Boone','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(23,'CALM - Child Abuse Listening','CALM','1236 Chapala St.','Santa Barbara ','CA',93101,'Pantry','By Referral only','U','Y','N','Monday-Friday','9:00am-8:00pm','Y','Agency'),
	(24,'PSHH/LADM1 (Housing)','People\'s Self Help Housing','1026 W Boone','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(25,'Foodbank of Santa Barbara Internal Programs','Foursquare Church of Santa Maria','709 N. Curryer Street','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(26,'Meridian Center','Community Action Commission','1720 S. Depot St.','Santa Maria','CA',93458,'Soup Kitchen','Open to All','P','N','N','','','N','Agency'),
	(27,'Hope to the Community','Hope Community Church','560 N. La Cumbre','Santa Barbara ','CA',93110,'Soup Kitchen','Visit www.organicsoupkitchen.org/','P','N','N','Wednesday','11:30am','N','Agency'),
	(28,'Probation Report and Resource Center','Community Solutions INC.','4500 Hollister Ave.','Santa Barbara ','CA',93110,'Residential','Open to All','P','Y','N','','','Y','Agency'),
	(29,'Family Service Center','Community Action Commission','4681 11th Street','Guadalupe','CA',93434,'Pantry','Open to All','U','N','N','Monday-Friday','N/A','Y','Agency'),
	(30,'NBCC Homeless Outreach','New Beginnings Counseling Center','423 Chapala Street','Santa Barbara ','CA',93101,'Other','Contact 805-284-3463','U','N','N','2nd Thursday','11:30am','N','Agency'),
	(31,'Agape Homes','Agape Homes','220 Princeton','Lompoc','CA',93436,'Pantry','Open to All','U','N','Y','1st Thursday','10:30am','Y','Agency'),
	(32,'La Purisima Concepcion Church','La Purisima Concepcion Church','213 W. Olive Avenue','Lompoc','CA',93436,'Soup Kitchen','Open to All','P','N','N','Friday','5:00-5:45pm','N','Agency'),
	(33,'PSHH/Riverview (Housing)','People\'s Self Help Housing','230 Callo Cesar Chavez','Guadalupe','CA',93434,'Pantry','Open to All','U','N','N','Monday-Friday','','N','Agency'),
	(34,'All Star Recovery','New Creations Ministries','5018 Calle Real','Santa Barbara ','CA',93111,'Residential','Open to All','P','Y','N','24/7','24/7','Y','Agency'),
	(35,'Sierra Madre Child Development','Community Action Commission','1002 E. Sierra Madre','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','Monday-Friday','N/A','N','Agency'),
	(36,'Transition House','Transition House','1011 Olive Street','Santa Barbara ','CA',93101,'Residential','Contact 805-966-9668','P','Y','N','Ongoing','As needed','N','Agency'),
	(37,'Wisdom Center','Life Steps Foundation','1414 N. Boradway Ste. A','Santa Maria','CA',93454,'Soup Kitchen','Open to All','P','N','N','','','N','Agency'),
	(38,'Crucified Life Ministries','Crucified Life Ministries','109 W. Fesler','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','Every other Thursday','12:00-1:00pm','N','Agency'),
	(39,'DVS-Mariposa House','Domestic Violence Solutions','501 W. Mill','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','Wednesday 2x month','11:30am','N','Agency'),
	(40,'Salvation Army Pantry','Salvation Army','4849 Hollister Ave.','Santa Barbara ','CA',93111,'Residential','Open to All','P','Y','N','Daily','7:30am, 11:00am, 6:00pm','Y','Agency'),
	(41,'CHC - Farmworkers Health & Services','Community Health Center','1619 Thornburg','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(42,'Hope Community Church','Hope Community Church','3010 Skyway Drive, Ste F','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','Last Thursday of month','5:00-6:30pm','N','Agency'),
	(43,'Seventh Day Adventist','Seventh Day Adventist','1775 S. Thornburg','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(44,'Sansum Diabetes Research Institute','Sansum Diabetes Research Institute','2219 Bath Street','Santa Barbara ','CA',93105,'Other','Contact 805-682-7638','P','Y','N','Thursday','4:00-5:00pm, 2nd Thursday 6:00-8:00pm','N','Agency'),
	(45,'Helping Hands Ministry','Church of God of Prophecy','231 No O St','Lompoc','CA',93436,'Pantry','Open to All','U','N','N','3rd Saturday','8:00am-10:00pm','N','Agency'),
	(46,'Organic Soup Kitchen','Organic Soup Kitchen','315 Meigs Rd., Suite A #369','Santa Barbara ','CA',93109,'Soup Kitchen','Visit www.organicsoupkitchen.org/','P','N','N','Wednesday','9:00am','N','Agency'),
	(47,'Lompoc Foursquare Church','Lompoc Foursquare Church','125 N. C Street','Lompoc','CA',93436,'Soup Kitchen','Open to All','P','N','N','Monday','4:30-5:30p','N','Agency'),
	(48,'Detox Recovery Point','Good Samaritan','401-C  W. Morrison','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','Friday','8:00am','N','Agency'),
	(49,'TMH/SM Recovery Learning Cmty','Transitions Mental Health','1112 S. Broadway','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','Tuesday-Friday','9:00am-4:00pm','Y','Agency'),
	(50,'New Life Christian Center','New Life Christian Center','816 No C St','Lompoc','CA',93436,'Pantry','Open to All','P','N','N','3rd Satursday','5:00-6:00pm','N','Agency'),
	(51,'Lompoc Detox Homes','Good Samaritan','604 W Ocean Ave','Lompoc','CA',93436,'Pantry','Open to All','U','N','Y','','','Y','Agency'),
	(52,'OASIS - Orcutt Senior Center','Oasis Senior Center','420 Soares','Santa Maria','CA',93455,'Seniors','Open to All','U','N','N','3rd Thursday','9:30-11:30am','Y','Agency'),
	(53,'Giving Tree Sober Living','Calvary Chapel of Santa Barbara','327 E. Victoria','Santa Barbara ','CA',93101,'Pantry','Show Up During Distribution','U','Y','N','','','Y','Agency'),
	(54,'SB Rescue Mission','Santa Barbara Rescue Mission','535 East Yanonali Street','Santa Barbara ','CA',93103,'Residential','Open to All','P','Y','Y','Monday','9:00am','Y','Agency'),
	(55,'Templo El Salvador','Templo El Salvador','222 N. Russell','Santa Maria','CA',93458,'Pantry','Open to All','U','N','N','1st & 3rd Wednesday','5:00-6:30pm (1st W) or 9:00pm (3rd W)','N','Agency'),
	(56,'Buellton Senior Center','Santa Ynez Senior Citizens Foundation','164 W. Hwy 246','Buellton','CA',93427,'Seniors','Open to All','U&P','N','N','Monday-Friday','9:00am-3:00pm','N','Agency'),
	(57,'Bethany Baptist Church','Bethany Baptist Church','4890 Bethany ','Santa Maria','CA',93455,'Pantry','Open to All','U','N','Y','','','Y','Agency'),
	(58,'Angel Food','Pacific Christian Church','1021 S. Blosser','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','Friday-Saturday','11:00am','N','Agency'),
	(59,'Vineyard Christian Fellowship','Vineyard Christian Fellowship','200 S. East Ave.','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','','','N','Agency'),
	(60,'Johnson Temple of God','Victory Harvest Church of God','619 N. Railroad','Santa Maria','CA',93458,'Pantry','Open to All','U','N','Y','','','Y','Agency'),
	(61,'Salvation Army - Soup Kitchen','Salvation Army','402 S. Miller','Santa Maria','CA',93454,'Pantry','Open to All','U','N','N','Monday-Friday','7:00-7.30am','N','Agency'),
	(62,'Salvation Army Hospitality House','Salvation Army ','423 Chapala Street','Santa Barbara ','CA',93101,'Residential','Open to All','P','Y','Y','Sunday','7:00pm','Y','Agency'),
	(63,'Christian Families - Food Basket','Christian Family','324 N. Suey Rd.','Santa Maria ','CA',93454,'Pantry','Open to All','U','N','N','Tuesday','9:00am-11:00am','Y','Agency'),
	(64,'Orcutt Presbyterian Church','Orcutt Presbyterian Church','993 Patterson Road','Santa Maria','CA',93455,'Pantry','Open to All','U','N','N','Friday','2:00-4:00pm','N','Agency'),
	(65,'St. Peter\'s Episcopal- Martha\'s Meals','St. Peter\'s Episcopal Church','402 S. Lincoln St.','Santa Maria','CA',93458,'Pantry','Open to All','U','Y','N','','','N','Agency'),
	(66,'Beatitude House','Beatitude House','4575 9th Street','Guadalupe','CA',93434,'Pantry','Open to All','U','N','N','Tuesday','1:00pm','N','Agency'),
	(67,'New Hope Christian Church','New Hope Christian Church','213 N. J. St.','Lompoc','CA',93436,'Pantry','Open to All','U','N','Y','Wednesday','11:00am-3:00pm','Y','Agency'),
	(68,'Grace Lutheran Church Food Distribution','Grace Lutheran Church','3869 State St.','Santa Barbara ','CA',93105,'Pantry','Show Up During Distribution','U','Y','Y','1st, 2nd & 4th Saturday','9:00am','Y','Agency'),
	(69,'Unity Shoppe','Unity Shoppe','1219 State Street','Santa Barbara ','CA',93101,'Pantry','By Referral only','U','Y','N','Monday-Friday','10:00am-6:00pm','Y','Agency'),
	(70,'Salvation Army - SM','Salvation Army','211 E. Fesler','Santa Maria','CA',93454,'Soup Kitchen','Open to All','P','N','N','','','Y','Agency'),
	(71,'Lompoc Catholic Charities','Catholic Charities','903 E. Chestnut','Lompoc','CA',93436,'Pantry','Contact 805-922-2059','U','N','Y','Monday-Friday','10:00am-12:00pm, 12:30pm-3:30pm','Y','Agency'),
	(72,'Catholic Charities- Santa Barbara','Catholic Charities - Santa Barbara','609 East Haley Street','Santa Barbara ','CA',93101,'Pantry','Open to All','U','Y','N','Monday-Friday','9:30am-4:30pm','Y','Agency'),
	(73,'Catholic Charities - SM','Catholic Charities','607 W. Main Street','Santa Maria','CA',93458,'Pantry','Contact 805-922-2059','U','N','N','Monday-Thursday','9:00am-12:00pm','Y','Agency'),
	(74,'Mobile Farmers Market - Christian Family','Mobile Farmers Market','324 N. Suey Rd.','Santa Maria ','CA',93454,'Pantry','Open to All','U','N','Y','Tuesdays','11:00am-12:00pm','N','FB Program'),
	(75,'Mobile Farmers Market - Guadalupe  Foursquare','Mobile Farmers Market','960-A Guadalupe St','Guadalupe','CA',93434,'Pantry','Open to All','U','N','Y','Fridays','4:00-5:30pm','N','FB Program'),
	(76,'Mobile Farmers Market - New Hope Christian','Mobile Farmers Market','213 No. J St.','Lompoc','CA',93436,'Pantry','Open to All','U','N','Y','4th Tuesday','12:00-2:00pm','N','FB Program'),
	(77,'Mobile Farmers Market - PSHH/LADM','Mobile Farmers Market','1026 W Boone Ave','Santa Maria','CA',93458,'Pantry','Open to All','U','N','Y','4th Monday','1:00-3:00pm','N','FB Program'),
	(78,'Mobile  Farmers  Market - PSHH/LADM2','Mobile Farmers Market','1148 W Boone Ave','Santa Maria','CA',93458,'Pantry','Open to All','U','N','Y','2nd Monday','1:00-3:00pm','N','FB Program'),
	(79,'Mobile Farmers Market - Crossroads Buellton','Mobile Farmers Market','236 La Lata Dr','Buellton ','CA',93427,'Pantry','Open to All','U','N','Y','2nd Wednesday','12:00-1:00pm','N','FB Program'),
	(80,'Mobile Food Pantry - Guadalupe','Mobile Food Pantry','4681 11th Street','Guadalupe','CA',93434,'Pantry','Open to All','U','N','Y','2nd Friday','11:00am-12:00pm','Y','FB Program'),
	(81,'Mobile Food Pantry - New Cuyama','Mobile Food Pantry','4711 Hwy 166','New Cuyama','CA',93254,'Pantry','Open to All','U','N','Y','3rd Wednesday','12:00-1:00pm','Y','FB Program'),
	(82,'Mobile Food Pantry - Sisquoc','Mobile Food Pantry','4949 Foxen Canyon Road','Santa Maria','CA',93454,'Pantry','Open to All','U','N','Y','2nd Friday','11:00am-12:00pm','Y','FB Program'),
	(83,'Mobile Food Pantry - Santa Rita Apartments','Mobile Food Pantry','917 W Ocean Avenue','Lompoc ','CA',93436,'Pantry','Open to All','U','N','Y','4th Wednesday','10:30am','Y','FB Program'),
	(84,'Mobile Food Pantry - Pacific Southern Baptist','Mobile Food Pantry','3600 Pinewood Road','Santa Maria','CA',93455,'Pantry','Open to All','U','N','Y','2nd Friday','11:00am-12:00pm','Y','FB Program'),
	(85,'Mobile Food Pantry - Lompoc Methodist Church','Mobile Food Pantry','925 No. F. St','Lompoc','CA',93436,'Pantry','Open to All','U','N','Y','3rd Monday','3:00-4:00pm','Y','FB Program'),
	(86,'HSP Veteran\'s Hall','Healthy School Pantry','313 W Tunnell Ave','Santa Maria ','CA',93458,'Youth','Open to All','U','Y','N','3rd Thursday','5:30-7:30pm','N','FB Program'),
	(87,'HSP Evans Park ','Healthy School Pantry','200 W Williams Ave','Santa Maria ','CA',93458,'Youth','Open to All','U','Y','N','3rd Friday','3:00-4:00pm','N','FB Program'),
	(88,'HSP Santa Ynez Elementary','Healthy School Pantry','3525 Pine St','Santa Ynez','CA',93460,'Youth','Open to All','U','Y','N','2nd Friday','2:00-4:00pm','N','FB Program'),
	(89,'HSP Lompoc','Healthy School Pantry','320 N J St','Lompoc','CA',93436,'Youth','Open to All','U','Y','N','3rd Tuesday','3:00-5:00pm','N','FB Program'),
	(90,'Mobile Farmer\'s Market- Westside ','Mobile Food Programs - City of Santa Barbara','423 W. Victoria','Santa Barbara ','CA',93101,'Pantry','Open to All','U','N','Y','Mondays','1:00pm','N','FB Program'),
	(91,'Mobile Farmer\'s Market- Franklin Center','Mobile Food Programs - City of Santa Barbara','1136 East Montecito Street','Santa Barbara ','CA',93103,'Pantry','Open to All','U','N','Y','Thursdays','1:00pm','N','FB Program'),
	(92,'Mobie Farmer\'s Market- St. Joseph\'s','Mobile Food Programs - St. Joseph\'s','1532 Linden Ave','Carpinteria ','CA',93013,'Pantry','Open to All','U','N','Y','3rd Wednesday','1:30pm','N','FB Program'),
	(93,'Mobile Farmer\'s Market- Main School','Mobile Food Programs - Main School','5201 Eighth Street','Carpinteria ','CA',93013,'Pantry','Open to All','U','N','Y','4th Wednesday','3:30pm','N','FB Program'),
	(94,'Mobile Farmer\'s Market- Davis Center','Mobile Food Programs - City of Santa Barbara','1232 De La Vina','Santa Barbara ','CA',93101,'Pantry','Open to All','U','N','Y','Mondays','1:00pm','N','FB Program'),
	(95,'Mobile Food Pantry- Franklin Center','Mobile Food Programs - City of Santa Barbara','1136 E. Montecito Street','Santa Barbara ','CA',93103,'Pantry','Open to All','U','N','Y','3rd Tuesday','3:00-5:00pm','N','FB Program'),
	(96,'Mobile Food Pantry- Lower Westside','Mobile Food Programs - City of Santa Barbara','520 Wentworth Ave.','Santa Barbara ','CA',93101,'Pantry','Open to All','U','N','Y','1st Tuesday','1:30pm','N','FB Program'),
	(97,'Mobile Food Pantry- St. Joseph\'s','Mobile Food Programs - St. Joseph\'s ','1532 Linden Ave','Carpinteria ','CA',93013,'Pantry','Open to All','U','N','Y','1st Wednesday','1:30-3:30pm','N','FB Program'),
	(98,'Mobile Food Pantry- Goleta Boys and Girl\'s Club','Mobile Food Programs - United Boy\'s & Girl\'s Clubs','5679 Hollister Avenue','Goleta ','CA',93117,'Pantry','Open to All','U','N','Y','4th Thursday','11:00am','N','FB Program'),
	(99,'HSP Goleta Valley Community Center','Healthy School Pantry','5679 Hollister Ave','Goleta','CA',93117,'Pantry','Through School','U','Y','N','2nd Thursday','4:00-6:00pm','N','FB Program'),
	(100,'HSP Isla Vista Elementary','Healthy School Pantry','6875 El Colegio','Goleta','CA',93117,'Pantry','Through School','U','Y','N','1st Thursday','3:30-5:30pm','N','FB Program'),
	(101,'NA -Goleta Valley Community Center','Nutrition Advocates','5679 Hollister Ave. ','Goleta','CA',93117,'Other','Contact Yleana Velasco','N/A','Y','N','1st Friday','5:00pm','N/A','FB Program'),
	(102,'NA- Vets Hall','Nutrition Advocates','1000 N. Railroad ','Santa Maria ','CA',93458,'Other','Contact Yleana Velasco','N/A','Y','N','2nd Friday','5:00pm','N/A','FB Program'),
	(103,'NA - Evans Park','Nutrition Advocates','200 W. Williams ','Santa Maria ','CA',93458,'Other','Contact Yleana Velasco','N/A','Y','N','2nd/3rd Monday','4:00pm','N/A','FB Program'),
	(104,'NA - Santa Ynez Elementary','Nutrition Advocates','3525 Pine ','Santa Ynez','CA',93460,'Other','Contact Yleana Velasco','N/A','Y','N','2nd Wednesday','2:00pm','N/A','FB Program'),
	(105,'Memorial Park','Picnic in the Park','1400 Santa Ynez Drive','Carpinteria','CA',93013,'Youth','Open to All','P','N','N','M-F during summer','12:30-1:00pm','N','FB Program'),
	(106,'Estero Park','Picnic in the Park','889 Camino Del Sur','Isla Vista','CA',93117,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:30-1:15pm','N','FB Program'),
	(107,'Storke Ranch Apartments','Picnic in the Park','6822 Phelps Road','Goleta','CA',93117,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:00-12:45pm','N','FB Program'),
	(108,'Villa de la Esperanza','Picnic in the Park','131 S Kellogg','Goleta','CA',93117,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:30-1:30pm','N','FB Program'),
	(109,'Milagro De Ladera','Picnic in the Park','322 Ladera Street','Santa Barbara','CA',93101,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:30-1:30pm','N','FB Program'),
	(110,'Santa Barbara Public Library','Picnic in the Park','40 E. Anapamu Street','Santa Barbara','CA',93101,'Youth','Open to All','P','N','N','Wednesdays during summer','11:00am-12:00pm','N','FB Program'),
	(111,'Los Alamos','Picnic in the Park','500 Drum Canyon Road','Los Alamos','CA',93440,'Youth','Open to All','P','N','N','Monday-Friday during summer','11:00am-12:00pm','N','FB Program'),
	(112,'Grogan Park','Picnic in the Park','1155 W. Rancho Verde','Santa Maria','CA',93458,'Youth','Open to All','P','N','N','Monday-Friday during summer','1:00-2:30pm','N','FB Program'),
	(113,'Vets Memorial Park','Picnic in the Park','545 Pine St.','Santa Maria','CA',93458,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:30-1:30pm','N','FB Program'),
	(114,'LADM I','Picnic in the Park','1026 W. Boone St','Santa Maria','CA',93458,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:00-1:00pm','N','FB Program'),
	(115,'LADM II','Picnic in the Park','1138 W. Boone St','Santa Maria','CA',93458,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:00-1:00pm','N','FB Program'),
	(116,'Santa Maria Public Library','Picnic in the Park','420 S. Broadway','Santa Maria','CA',93454,'Youth','Open to All','P','N','N','Monday during summer','2:00-3:00pm','N','FB Program'),
	(117,'Coast Valley Lompoc','Picnic in the Park','133 N. F St.','Lompoc','CA',93436,'Youth','Open to All','P','N','N','Monday-Friday during summer','2:00-3:00pm','N','FB Program'),
	(118,'La Honda YMCA Lompoc','Picnic in the Park','1213 North A St','Lompoc','CA',93436,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:00-1:00pm','N','FB Program'),
	(119,'Lompoc B&G Club','Picnic in the Park','1025 W Ocean Ave','Lompoc','CA',93436,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:00-1:30pm','N','FB Program'),
	(120,'Maldonado Fighting Back','Picnic in the Park','600 S McClelland','Santa Maria','CA',93454,'Youth','Open to All','P','N','N','Monday, Wednesday, Friday','12:00-12:30pm','N','FB Program'),
	(121,'Anderson Recreation Center','Picnic in the Park','125 W Walnut Ave','Lompoc','CA',93436,'Youth','Open to All','P','N','N','Monday-Friday during summer','12:30-1:00pm','N','FB Program'),
	(122,'Santa Maria Parks and Recreation','Teens Love Cooking','600 W. Enos Dr','Santa Maria','CA',93458,'Nutrition and Cooking class','Through SM Recreation & Parks Dept','P','Y','N','Mondays','11:30am-12:30pm; 3:30-5:00pm','N','FB Program');

/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
